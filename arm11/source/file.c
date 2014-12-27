#if 0
#include <3ds.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <errno.h>
#include <sys/reent.h>
#include <sys/stat.h>
#include <sys/statvfs.h>
#include <sys/iosupport.h>
#include <fcntl.h>

typedef struct {
	Handle handle;
	u64 offset;
} FILE_STRUCT;

typedef struct {
	Handle handle;
	FS_dirent entry_data; /*! Temporary storage for reading entries */
} DIR_STATE_STRUCT;

typedef struct {
	FS_archive sdmcArchive;
	char cwd[1024];
} FSPTR;

static FSPTR FS_ptr;

static FSPTR* get_fsptr (const char* path) {
	const devoptab_t *devops;
	FSPTR * fs;

	devops = GetDeviceOpTab (path);

	if (!devops) {
		return NULL;
	}
	fs = (FSPTR *)devops->deviceData;
	return fs;
}


int _FAT_open_r (struct _reent *r, void *fileStruct, const char *path, int flags, int mode) {
	FILE_STRUCT* file = (FILE_STRUCT*) fileStruct;
	u32 sdflags = 0;
	int ret;
	FSPTR* fsptr;
	char tmpStr[4096];
	
	//printf("open %s\n",path);

	fsptr = get_fsptr(path);

	if (fsptr == NULL) {
		r->_errno = ENODEV;
		return -1;
	}

	// Determine which mode the file is openned for
	if ((flags & 0x03) == O_RDONLY) {
		// Open the file for read-only access
		sdflags = FS_OPEN_READ;
	} else if ((flags & 0x03) == O_WRONLY) {
		// Open file for write only access
		sdflags = FS_OPEN_WRITE;
	} else if ((flags & 0x03) == O_RDWR) {
		// Open file for read/write access
		sdflags = FS_OPEN_READ | FS_OPEN_WRITE;
	} else {
		r->_errno = EACCES;
		return -1;
	}

	if(flags & O_CREAT) {
		sdflags |= FS_OPEN_CREATE;
	}

	// Move the path pointer to the start of the actual path
	if (strchr (path, ':') != NULL) {
		path = strchr (path, ':') + 1;
	}
	if (strchr (path, ':') != NULL) {
		r->_errno = EINVAL;
		return -1;
	}

	file->handle = 0;
	sprintf(tmpStr, "%s%s", fsptr->cwd, path);
	ret=FSUSER_OpenFile(NULL, &file->handle, fsptr->sdmcArchive, FS_makePath(PATH_CHAR, tmpStr), sdflags, 0);
	//printf("\n  open %s (%08X)\n", tmpStr, ret);
	if (ret) {
		r->_errno = EBADF;
		return -1;
	}
	file->offset = 0;

	return (int)file;
}

int _FAT_close_r (struct _reent *r, int fd) {
	FILE_STRUCT* file = (FILE_STRUCT*)  fd;
	int ret;

	//printf("close %08x\n",fd);
	// Make sure we can actually read from the file
	if ((file == NULL) || !file->handle) {
		r->_errno = EBADF;
		return -1;
	}
	ret = FSFILE_Close(file->handle);
	printf("   close %08x\n",ret);
	file->handle = 0;
	return 0;
}

ssize_t _FAT_write_r (struct _reent *r, int fd, const char *ptr, size_t len) {
	printf("write %08x\n",fd);
	r->_errno = EBADF;
	return -1;
}

ssize_t _FAT_read_r (struct _reent *r, int fd, char *ptr, size_t len) {
	FILE_STRUCT* file = (FILE_STRUCT*)  fd;
	u32 readSize=0;
	int ret;
	//printf("read %08x ",ptr);
	//printf("%d %d ",len, file ? file->offset : -1);
	//printf("%08x\n",fd);

	// Short circuit cases where len is 0 (or less)
	if (len <= 0) {
		return 0;
	}

	// Make sure we can actually read from the file
	if ((file == NULL) || !file->handle) {
		r->_errno = EBADF;
		return -1;
	}

	ret=FSFILE_Read(file->handle, (u32*)&readSize, file->offset, (u32*)ptr, len);
	if(ret) {
		r->_errno = ret;
		return -1;
	}
	if(!readSize) {
		return 0;
	}
	file->offset += readSize;

	return readSize;
}

off_t _FAT_seek_r (struct _reent *r, int fd, off_t pos, int dir) {
	FILE_STRUCT* file = (FILE_STRUCT*)  fd;
	u64 offset;
	u64 length;
	int ret;

	//printf("seek %08x\n",fd);
	// Make sure we can actually read from the file
	if ((file == NULL) || !file->handle) {
		r->_errno = EBADF;
		return -1;
	}
	ret = FSFILE_GetSize(file->handle,&length);
	if(ret) {
		r->_errno = EBADF;
		return -1;
	}
	switch (dir) {
	case SEEK_SET:
		offset = pos;
		break;
	case SEEK_CUR:
		offset = file->offset + pos;
		break;
	case SEEK_END:
		offset = length + pos;
		break;
	default:
		r->_errno = EINVAL;
		return -1;
	}
	if ((pos > 0) && (offset < 0)) {
		r->_errno = EOVERFLOW;
		return -1;
	}
	if (offset > length) {
		r->_errno = EINVAL;
		return -1;
	}
	file->offset = offset;
	return 0;
}

int _FAT_fstat_r (struct _reent *r, int fd, struct stat *st) {
	printf("fstat %08x\n",fd);
	return -1;
}

int _FAT_stat_r (struct _reent *r, const char *path, struct stat *st) {
	FSPTR* fsptr;
	FS_path dirPath;
	Handle handle;
	Result ret;
	u64 cb;

	//printf("stat %s\n", path);
	memset(st, 0, sizeof(*st));

	fsptr = get_fsptr(path);
	if (fsptr == NULL) {
		r->_errno = ENODEV;
		return -1;
	}

	// Move the path pointer to the start of the actual path
	if (strchr(path, ':') != NULL) {
		path = strchr(path, ':') + 1;
	}
	if (strchr(path, ':') != NULL) {
		r->_errno = EINVAL;
		return -1;
	}

	ret = FSUSER_OpenFile(NULL, &handle, fsptr->sdmcArchive, FS_makePath(PATH_CHAR, path), FS_OPEN_READ, 0);
	//printf("\n  opening %s (%08X)\n", path, ret);
	if (ret) {
		r->_errno = EBADF;
		return -1;
	}
	ret = FSFILE_GetSize(handle, &cb);
	st->st_size = cb;
	st->st_mode |= S_IFREG | S_IREAD;
	ret = FSFILE_Close(handle);
	return 0;
}

int _FAT_link_r (struct _reent *r, const char *existing, const char *newLink) {
	printf("link %s %s\n",existing,newLink);
	r->_errno = ENOTSUP;
	return -1;
}

int _FAT_unlink_r (struct _reent *r, const char *path) {
	printf("unlink %s\n",path);
	r->_errno = ENOTSUP;
	return -1;
}

int _FAT_chdir_r (struct _reent *r, const char *path) {
	FSPTR* fsptr;

	printf("chdir %s\n",path);

	fsptr = get_fsptr(path);

	if (fsptr == NULL) {
		r->_errno = ENODEV;
		return -1;
	}
	// Move the path pointer to the start of the actual path
	if (strchr (path, ':') != NULL) {
		path = strchr (path, ':') + 1;
	}
	if (strchr (path, ':') != NULL) {
		r->_errno = EINVAL;
		return -1;
	}
	printf("  cwd %s\n",path);
	strcpy(fsptr->cwd,path);
	return 0;
}

int _FAT_rename_r (struct _reent *r, const char *oldName, const char *newName) {
	printf("rename %s %s\n",oldName,newName);
	r->_errno = ENOTSUP;
	return -1;
}

int _FAT_mkdir_r (struct _reent *r, const char *path, int mode) {
	printf("mkdir %s\n",path);
	r->_errno = ENOTSUP;
	return -1;
}

DIR_ITER* _FAT_diropen_r(struct _reent *r, DIR_ITER *dirState, const char *path) {
	DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*)(dirState->dirStruct);
	FSPTR* fsptr;
	FS_path dirPath;
	char tmpStr[4096];

	printf("diropen %s\n", path);
	state->handle = 0;

	fsptr = get_fsptr(path);
	if (fsptr == NULL) {
		r->_errno = ENODEV;
		return -1;
	}

	// Move the path pointer to the start of the actual path
	if (strchr(path, ':') != NULL) {
		path = strchr(path, ':') + 1;
	}
	if (strchr(path, ':') != NULL) {
		r->_errno = EINVAL;
		return -1;
	}

	state->handle = 0;
	sprintf(tmpStr, "%s%s", fsptr->cwd, path);
	dirPath = FS_makePath(PATH_CHAR, tmpStr);

	if (FSUSER_OpenDirectory(NULL, &state->handle, fsptr->sdmcArchive, dirPath)) {
		r->_errno = ENOENT;
		return NULL;
	}

	return (DIR_ITER*)state;
}

int _FAT_dirreset_r (struct _reent *r, DIR_ITER *dirState) {
	printf("dirreset %08x\n", dirState);
	r->_errno = ENOTSUP;
	return -1;
}

int _FAT_dirnext_r (struct _reent *r, DIR_ITER *dirState, char *filename, struct stat *filestat) {
	DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*)(dirState->dirStruct);
	u32            entries;
	Result ret;
	u16            *name;

	printf("dirnext %s\n", filename);
	/* fetch the next entry */
	ret = FSDIR_Read(state->handle, &entries, 1, &state->entry_data);
	if (ret == 0)
	{
		if (entries == 0)
		{
			/* there are no more entries; ENOENT signals end-of-directory */
			r->_errno = ENOENT;
			return -1;
		}

		/* fill in the stat info */
		filestat->st_ino = 0;
		if (state->entry_data.isDirectory)
			filestat->st_mode = S_IFDIR;
		else
			filestat->st_mode = S_IFREG;

		/* copy the name */
		name = state->entry_data.name;
		while (*name)
			*filename++ = *name++;
		*filename = 0;

		return 0;
	}
	return -1;
}

int _FAT_dirclose_r (struct _reent *r, DIR_ITER *dirState) {
	DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*)(dirState->dirStruct);
	Result ret;

	printf("dirclose %08x\n", dirState);
	ret = FSDIR_Close(state->handle);
	if (ret == 0)
		return 0;

	r->_errno = ret;
	return -1;
}

int _FAT_statvfs_r (struct _reent *r, const char *path, struct statvfs *buf) {
	printf("statvfs %s\n",path);
	r->_errno = ENOTSUP;
	return -1;
}

int _FAT_ftruncate_r (struct _reent *r, int fd, off_t len) {
	printf("ftruncate %08x\n",fd);
	r->_errno = ENOTSUP;
	return -1;
}

int _FAT_fsync_r (struct _reent *r, int fd) {
	printf("sync %08x\n",fd);
	r->_errno = ENOTSUP;
	return -1;
}

static const devoptab_t dotab_fat = {
	"fat",
	sizeof (FILE_STRUCT),
	_FAT_open_r,
	_FAT_close_r,
	_FAT_write_r,
	_FAT_read_r,
	_FAT_seek_r,
	_FAT_fstat_r,
	_FAT_stat_r,
	_FAT_link_r,
	_FAT_unlink_r,
	_FAT_chdir_r,
	_FAT_rename_r,
	_FAT_mkdir_r,
	sizeof (DIR_STATE_STRUCT),
	_FAT_diropen_r,
	_FAT_dirreset_r,
	_FAT_dirnext_r,
	_FAT_dirclose_r,
	_FAT_statvfs_r,
	_FAT_ftruncate_r,
	_FAT_fsync_r,
	NULL,	/* Device data */
	NULL,
	NULL
};

bool SD_init () {
	static char *name = "sdmc";
	devoptab_t* devops;
	char* nameCopy;
	char devname[10];
	Result ret;
	int r;

	memset(&FS_ptr,0,sizeof(FS_ptr));

	ret=fsInit();
	printf("fsInit %08X\n", (unsigned int)ret);

	strcpy(FS_ptr.cwd,"/");
	FS_ptr.sdmcArchive=(FS_archive){0x00000009, (FS_path){PATH_EMPTY, 1, (u8*)""}};
	FSUSER_OpenArchive(NULL, &FS_ptr.sdmcArchive);
	printf("FSUSER_OpenArchive %08X\n", (unsigned int)ret);

	sprintf(devname, "%s:", name);
	if(FindDevice(devname) >= 0) {
		printf("FindDevice failed\n");
		return true;
	}

	devops = malloc (sizeof(devoptab_t) + strlen(name) + 1);
	if (!devops) {
		printf("devops failed\n");
		return false;
	}
	// Use the space allocated at the end of the devoptab struct for storing the name
	nameCopy = (char*)(devops+1);

	// Add an entry for this device to the devoptab table
	memcpy (devops, &dotab_fat, sizeof(dotab_fat));
	strcpy (nameCopy, name);
	devops->name = nameCopy;
	devops->deviceData = &FS_ptr;

	r = AddDevice (devops);
	printf("AddDevice %08X\n", r);

	chdir("sdmc:/");

	return true;
}
#endif
