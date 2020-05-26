#ifndef ASCMx128
# define ASCMx128
# ifndef NAME
#  define NAME "ASCMx128"
# endif
# ifndef DESC
#  define DESC ""
# endif
# ifndef VERSION
#  define VERSION 0
# endif
# ifndef BUILD
#  define BUILD 1
# endif
# ifndef BUILD_DATE
#  define BUILD_DATE "2020-05-26 21:31"
# endif
# pragma GCC diagnostic ignored "-Wold-style-cast"
# pragma GCC diagnostic ignored "-Wweak-vtables"
# pragma GCC diagnostic ignored "-Wunused-command-line-argument"
# pragma GCC diagnostic ignored "-Wmissing-prototypes"
# define VERSIONSTR NAME << " version " << VERSION << " build " << BUILD << " (" << BUILD_DATE << ")" << endl
# include "systemc.h"
# include "./../sources/ALU/adder_half.hpp"


int         sc_main();

#endif                                                                                       












