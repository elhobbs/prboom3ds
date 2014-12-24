# 1 "c:/devl/prboom3ds/src/dstrings.c"
# 1 "c:\\devl\\prboom3ds\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:/devl/prboom3ds/src/dstrings.c"
# 38 "c:/devl/prboom3ds/src/dstrings.c"
# 1 "c:/devl/prboom3ds/src/dstrings.h" 1
# 50 "c:/devl/prboom3ds/src/dstrings.h"
# 1 "c:/devl/prboom3ds/src/d_englsh.h" 1
# 51 "c:/devl/prboom3ds/src/dstrings.h" 2
# 74 "c:/devl/prboom3ds/src/dstrings.h"
# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h" 1 3 4
# 147 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 212 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 324 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 75 "c:/devl/prboom3ds/src/dstrings.h" 2

extern const size_t NUM_QUITMESSAGES;

extern const char* const endmsg[];
# 39 "c:/devl/prboom3ds/src/dstrings.c" 2



const char *const endmsg[]=
{

  "are you sure you want to\nquit this great game?",
  "please don't leave, there's more\ndemons to toast!",
  "let's beat it -- this is turning\ninto a bloodbath!",
  "i wouldn't leave if i were you.\ndos is much worse.",
  "you're trying to say you like dos\nbetter than me, right?",
  "don't leave yet -- there's a\ndemon around that corner!",
  "ya know, next time you come in here\ni'm gonna toast ya.",
  "go ahead and leave. see if i care.",


  "you want to quit?\nthen, thou hast lost an eighth!",
  "don't go now, there's a \ndimensional shambler waiting\nat the dos prompt!",
  "get outta here and go back\nto your boring programs.",
  "if i were your boss, i'd \n deathmatch ya in a minute!",
  "look, bud. you leave now\nand you forfeit your body count!",
  "just leave. when you come\nback, i'll be waiting with a bat.",
  "you're lucky i don't smack\nyou for thinking about leaving.",
# 81 "c:/devl/prboom3ds/src/dstrings.c"
  "THIS IS NO MESSAGE!\nPage intentionally left blank.",
};


const size_t NUM_QUITMESSAGES = sizeof(endmsg)/sizeof(*endmsg) - 1;
