OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)
STARTUP(build/crt0.o)

MEMORY {

	memregion	: ORIGIN = 0x00100000, LENGTH = 2395K
}

__memregion_start	=	ORIGIN(memregion);
__memregion_top	=	ORIGIN(memregion)+ LENGTH(memregion);

PHDRS
{
	text PT_LOAD FLAGS(5);
	rodata PT_LOAD FLAGS(4);
	data PT_LOAD FLAGS(6);
	bss PT_LOAD;
}

SECTIONS
{
	.init	: ALIGN(0x1000)
	{
		__text_start = . ;
		KEEP (*(.init))
		/*. = ALIGN(4);   REQUIRED. LD is flaky without it. */
	} >memregion :text
		
	.plt : 
	{ 
		*(.plt) 
	} >memregion = 0xff

	.text :   ALIGN (0x1000)
	{

		*(.text*)
		*(.stub)
		/* .gnu.warning sections are handled specially by elf32.em.  */
		*(.gnu.warning)
		*(.gnu.linkonce.t*)
		*(.glue_7)
		*(.glue_7t)
		/*. = ALIGN(4);   REQUIRED. LD is flaky without it. */
	} >memregion

	.fini           :
	{
		KEEP (*(.fini))
		. = ALIGN(0x1000);
	} >memregion

	__text_end = . ;

	.rodata :
	{
		*(.rodata)
		*all.rodata*(*)
		*(.roda)
		*(.rodata.*)
		*(.gnu.linkonce.r*)
		SORT(CONSTRUCTORS)
		. = ALIGN(0x1000);   /* REQUIRED. LD is flaky without it. */
	} >memregion :rodata

	.ARM.extab   : { *(.ARM.extab* .gnu.linkonce.armextab.*) } >memregion
	__exidx_start = .;
	.ARM.exidx   : { *(.ARM.exidx* .gnu.linkonce.armexidx.*) } >memregion
	__exidx_end = .;

/* Ensure the __preinit_array_start label is properly aligned.  We
   could instead move the label definition inside the section, but
   the linker would then create the section even if it turns out to
   be empty, which isn't pretty.  */
	. = ALIGN(32 / 8);
	PROVIDE (__preinit_array_start = .);
	.preinit_array     : { KEEP (*(.preinit_array)) } >memregion :data
	PROVIDE (__preinit_array_end = .);
	PROVIDE (__init_array_start = .);
	.init_array     : { KEEP (*(.init_array)) } >memregion :data
	PROVIDE (__init_array_end = .);
	PROVIDE (__fini_array_start = .);
	.fini_array     : { KEEP (*(.fini_array)) } >memregion = 0xff
	PROVIDE (__fini_array_end = .);

	.ctors : ALIGN(0x1000)
	{
	/* gcc uses crtbegin.o to find the start of the constructors, so
		we make sure it is first.  Because this is a wildcard, it
		doesn't matter if the user does not actually link against
		crtbegin.o; the linker won't look for a file to match a
		wildcard.  The wildcard also means that it doesn't matter which
		directory crtbegin.o is in.  */
		KEEP (*crtbegin.o(.ctors))
		KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
		KEEP (*(SORT(.ctors.*)))
		KEEP (*(.ctors))
		/*. = ALIGN(4);    REQUIRED. LD is flaky without it. */
	} >memregion = 0xff

	.dtors : ALIGN(0x1000)
	{
		KEEP (*crtbegin.o(.dtors))
		KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
		KEEP (*(SORT(.dtors.*)))
		KEEP (*(.dtors))
		/*. = ALIGN(4);    REQUIRED. LD is flaky without it. */
	} >memregion = 0xff

	.eh_frame : ALIGN(0x1000)
	{
		KEEP (*(.eh_frame))
		/*. = ALIGN(4);    REQUIRED. LD is flaky without it. */
	} >memregion = 0xff

	.gcc_except_table : ALIGN(0x1000)
	{
		*(.gcc_except_table)
		/*. = ALIGN(4);    REQUIRED. LD is flaky without it. */
	} >memregion = 0xff
	.jcr            : { KEEP (*(.jcr)) } >memregion = 0

	.got :
	{
		__got_start = ABSOLUTE(.);
		*(.got.plt) *(.got)
	} >memregion = 0
	__got_end = . ;
	
	.memregion ALIGN(4) :
	{
		__memregion_start = ABSOLUTE(.) ;
		*(.memregion)
		*memregion.*(.text)
		. = ALIGN(4);   /* REQUIRED. LD is flaky without it. */
		__memregion_end = ABSOLUTE(.) ;
	} >memregion = 0xff


	.data ALIGN(4) : 	{
		__data_start = ABSOLUTE(.);
		*(.data)
		*(.data.*)
		*(.gnu.linkonce.d*)
		CONSTRUCTORS
		. = ALIGN(0x1000);
		__data_end = ABSOLUTE(.) ;
	} >memregion :data



	.bss ALIGN(0x1000) :
	{
		__bss_start = ABSOLUTE(.);
		__bss_start__ = ABSOLUTE(.);
		*(.dynbss)
		*(.gnu.linkonce.b*)
		*(.bss*)
		*(COMMON)
		/*. = ALIGN(4);     REQUIRED. LD is flaky without it. */
	} >memregion :bss

	__bss_end = . ;
	__bss_end__ = . ;

	_end = . ;
	__end__ = . ;
	PROVIDE (end = _end);

	/* Stabs debugging sections.  */
	.stab 0 : { *(.stab) }
	.stabstr 0 : { *(.stabstr) }
	.stab.excl 0 : { *(.stab.excl) }
	.stab.exclstr 0 : { *(.stab.exclstr) }
	.stab.index 0 : { *(.stab.index) }
	.stab.indexstr 0 : { *(.stab.indexstr) }
	.comment 0 : { *(.comment) }
	/*	DWARF debug sections.
		Symbols in the DWARF debugging sections are relative to the beginning
		of the section so we begin them at 0.  */
	/* DWARF 1 */
	.debug          0 : { *(.debug) }
	.line           0 : { *(.line) }
	/* GNU DWARF 1 extensions */
	.debug_srcinfo  0 : { *(.debug_srcinfo) }
	.debug_sfnames  0 : { *(.debug_sfnames) }
	/* DWARF 1.1 and DWARF 2 */
	.debug_aranges  0 : { *(.debug_aranges) }
	.debug_pubnames 0 : { *(.debug_pubnames) }
	/* DWARF 2 */
	.debug_info     0 : { *(.debug_info) }
	.debug_abbrev   0 : { *(.debug_abbrev) }
	.debug_line     0 : { *(.debug_line) }
	.debug_frame    0 : { *(.debug_frame) }
	.debug_str      0 : { *(.debug_str) }
	.debug_loc      0 : { *(.debug_loc) }
	.debug_macinfo  0 : { *(.debug_macinfo) }
	/* SGI/MIPS DWARF 2 extensions */
	.debug_weaknames 0 : { *(.debug_weaknames) }
	.debug_funcnames 0 : { *(.debug_funcnames) }
	.debug_typenames 0 : { *(.debug_typenames) }
	.debug_varnames  0 : { *(.debug_varnames) }
	.stack 0x80000 : { _stack = .; *(.stack) }
	/* These must appear regardless of  .  */
}