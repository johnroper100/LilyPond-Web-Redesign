# -*-Makefile-*-

MISSING_OPTIONAL =  URW++ OTF fonts (download OTF files from 'http://git.ghostscript.com/?p=urw-core35-fonts.git;a=commit;h=79bcdfb34fbce12b592cce389fa7a19da6b5b018' and put them under '~/.local/share/fonts' etc., or use --with-urwotf-dir) gs >= 9.20 (installed: 9.06) extractpdfmark (Optionally using Ghostscript >= 9.20 together with Extract PDFmark can significantly reduce the disk space required for building the documentation and the final PDF files.)
MISSING_REQUIRED = 

# config.make.  Generated from config.make.in by configure.

package-depth = .

################################################################
## FLAGS
################################################################

FREETYPE2_CFLAGS = -I/usr/include/freetype2 
GUILE_CFLAGS =   
PANGO_FT2_CFLAGS = -pthread -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/i386-linux-gnu/glib-2.0/include -I/usr/include/freetype2 
PYTHON_CFLAGS = -I/usr/include/python2.7 -I/usr/include/i386-linux-gnu/python2.7  -fno-strict-aliasing -g -fstack-protector-strong  -g -fwrapv

CONFIG_CPPFLAGS = -I/usr/include/python2.7 -I/usr/include/i386-linux-gnu/python2.7  -fno-strict-aliasing -g -fstack-protector-strong  -g -fwrapv 
CONFIG_DEFINES = 

CONFIG_CFLAGS =   -O2 -finline-functions -g -pipe $(GUILE_CFLAGS) $(FREETYPE2_CFLAGS) $(PANGO_FT2_CFLAGS)
CONFIG_CXXFLAGS =   -O2 -finline-functions -g -pipe $(GUILE_CFLAGS) $(FREETYPE2_CFLAGS) $(PANGO_FT2_CFLAGS)

FONTCONFIG_LIBS = -lfontconfig -lfreetype 
GUILE_LIBS =    -lguile -lltdl -lgmp -lcrypt -lm -lltdl
FREETYPE2_LIBS = -lfreetype 
PANGO_FT2_LIBS = -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype 
PYTHON_LIBS = -L/usr/lib/python2.7/config-i386-linux-gnu -L/usr/lib -lpython2.7 -lpthread -ldl  -lutil -lm  -Xlinker -export-dynamic -Wl,-O1 -Wl,-Bsymbolic-functions
CXXABI_LIBS = 

CONFIG_LIBS = -ldl   $(GUILE_LIBS) $(PANGO_FT2_LIBS) $(FONTCONFIG_LIBS) $(FREETYPE2_LIBS)
CONFIG_LDFLAGS = 

PACKAGE = LILYPOND
package = lilypond
PACKAGE_NAME = LilyPond

HOST_ARCH=i586-linux-gnu

USE_EXTRACTPDFMARK=no

################################################################
## FILESYSTEM
################################################################

prefix = /usr/local
exec_prefix = ${prefix}

configure-builddir = /home/johnroper100/lilypond-git/Documentation
configure-srcdir = /home/johnroper100/lilypond-git

bindir = ${exec_prefix}/bin
build_lilypond_datadir = /home/johnroper100/lilypond-git/Documentation/out/share/lilypond
build_lilypond_libdir = /home/johnroper100/lilypond-git/Documentation/out/lib/lilypond
datarootdir = ${prefix}/share
datadir = ${datarootdir}
docdir = $(datadir)/doc
elispdir = $(datadir)/emacs/site-lisp
includedir = ${prefix}/include
infodir = ${datarootdir}/info
libdir = ${exec_prefix}/lib
localedir = ${prefix}/share/locale
mandir = ${datarootdir}/man
omfdir = $(datadir)/omf
program_prefix = 
program_suffix = 
sharedstatedir = ${prefix}/com
stepmake = /home/johnroper100/lilypond-git/stepmake

package_datadir = $(datadir)/$(package)
package_infodir = $(infodir)/$(package)
package_libdir = $(libdir)/$(package)
package_docdir = $(docdir)/$(package)
package_omfdir = $(omfdir)/$(package)

local_package_datadir = $(package_datadir)/$(TOPLEVEL_VERSION)
local_package_docdir = $(package_docdir)/$(TOPLEVEL_VERSION)
local_package_libdir = $(package_libdir)/$(TOPLEVEL_VERSION)
local_package_omfdir = $(package_omfdir)/$(TOPLEVEL_VERSION)

local_lilypond_datadir = $(local_package_datadir)
local_lilypond_docdir = $(local_package_docdir)
local_lilypond_libdir = $(local_package_libdir)
local_lilypond_omfdir = $(local_package_omfdir)

lilypond_datadir = $(local_package_datadir)
lilypond_libdir = $(local_package_libdir)
lilypond_docdir = $(package_docdir)
lilypond_omfdir = $(local_package_omfdir)

webdir = $(lilypond_docdir)/html
vimdir = $(lilypond_datadir)/vim

TEXGYRE_DIR = /usr/share/texmf/fonts/opentype/public/tex-gyre
TEXGYRE_FILES =  texgyreschola-regular.otf texgyreschola-italic.otf texgyreschola-bold.otf texgyreschola-bolditalic.otf texgyreheros-regular.otf texgyreheros-italic.otf texgyreheros-bold.otf texgyreheros-bolditalic.otf texgyrecursor-regular.otf texgyrecursor-italic.otf texgyrecursor-bold.otf texgyrecursor-bolditalic.otf
URWOTF_DIR = 
URWOTF_FILES = 

################################################################
## PROGRAMS
################################################################

AR = ar
BASH = /bin/bash
BISON = bison
CC = gcc
CONFIGSUFFIX = 
CROSS = no
CXX = g++
DBLATEX = dblatex
DEFINES = -DHAVE_CONFIG_H 
DEFS = -DHAVE_CONFIG_H
DOCUMENTATION = yes
EXTRACTPDFMARK = 
FIND = find
FCLIST = fc-list
FLEX = flex
FLEXLEXER_FILE = /usr/include/FlexLexer.h
FONTFORGE = /usr/bin/fontforge
GROFF = @GROFF@
GS920 = 
GUILE = /usr/bin/guile
GUILE_CFLAGS =   
GUILE_CONFIG = guile-config
GUILE_LDFLAGS =    -lguile -lltdl -lgmp -lcrypt -lm -lltdl
LD = $(CC)
LINK_GXX_STATICALLY = no
LN = ln
LN_S = ln -s
MAKEINFO_PROGRAM = makeinfo
TEXI2HTML_PROGRAM = texi2html
METAFONT = mf-nowin -progname=mf
MFMODE = ljfour
MSGFMT = msgfmt
PAPERSIZE=a4
PATHSEP = :
PDFTEX = /home/johnroper100/lilypond-git/Documentation/scripts/build/out/xetex-with-options
PDFLATEX = /home/johnroper100/lilypond-git/Documentation/scripts/build/out/xelatex-with-options
PERL = /usr/bin/perl
PLATFORM_WINDOWS = no
PYTHON = /usr/bin/python -tt
TARGET_PYTHON = /usr/bin/python -tt
RANLIB = ranlib
ROOTSEP = :
SHELL = /bin/sh
TAR = tar
WINDRES = - echo -windres windres not found
YACC = bison -y
ZIP = zip -r -9
