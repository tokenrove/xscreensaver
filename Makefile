# Makefile generated by imake - do not edit!
# $XConsortium: imake.c /main/88 1995/12/08 16:33:13 gildea $

# ----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $XConsortium: Imake.tmpl /main/r61_main/3 1996/02/02 18:57:32 gildea $
#
#	@(#)Imake.tmpl	9.1	5/16/97	14:59:57

.SUFFIXES: .i

# $XConsortium: Imake.cf /main/22 1995/12/05 16:39:53 mor $

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.sample /main/19 1995/12/14 13:03:29 matt $

# ----------------------------------------------------------------------
# platform-specific configuration parameters - edit usl.cf to change

# platform:  $XConsortium: usl.cf /main/42 1996/01/22 17:37:55 gildea $
#	@(#)usl.cf	9.1	5/16/97	15:00:50

# operating system:  GEMINI SCO UNIX System V/386 Release 4.2 Version 2.1.x

# server architecture: nfb (Xsco)

#	Only config/imake uses this CppCmd and it should always
#	be the native Unixware cpp  (this is usl.cf, this is Unixware)

# Xidle Extension.  dtm uses it.

# Defines for Pulling in extensions. See miinitext.c file.

# @(#)uslLib.rules	9.1	5/16/97	15:00:51

# $XConsortium: svr4.cf /main/15 1995/10/03 17:31:30 kaleb $

# SCO: xsco.cf	@(#)xsco.cf	9.1	5/16/97	15:00:54

# SCO: xsco.rules	@(#)xsco.rules	9.1	5/16/97	15:00:55

        DYNADIR = $(LIBDIR)/dyddx
        GRAFDIR = $(USRLIBDIR)/grafinfo
         HDKTOP = /usr/src/ihvkit/display
      HDKINCDIR = $(HDKTOP)/X11
      HDKLIBDIR = $(HDKTOP)/usrlib
   HDKSERVERDIR = $(HDKTOP)/Xserver
HDKSERVERLIBDIR = $(HDKSERVERDIR)/lib
HDKSERVERINCDIR = $(HDKSERVERDIR)/include
      HDKDDXDIR = $(HDKSERVERDIR)/hw/sco
    HDKPORTSDIR = $(HDKDDXDIR)/ports
     HDKTESTDIR = $(HDKSERVERDIR)/tests

# $XConsortium: sv4Lib.rules /main/17 1995/12/01 18:31:40 kaleb $

# ----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.sample /main/19 1995/12/14 13:03:29 matt $

# ---------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $XConsortium: Imake.rules /main/208 1996/01/17 11:08:27 kaleb $

#
#  Take InstallCatalogue and SaberProgramTarget from Imake.rules and
#  put in here since X Imakefiles don't use them
#

          PATHSEP = /
            SHELL = /bin/sh

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = makedepend
        MKDIRHIER = mkdirhier
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/makedepend

          INCROOT = /usr/X11R6.1/include
        USRLIBDIR = /usr/X11R6.1/lib
         SHLIBDIR = /usr/X11R6.1/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/X11R6.1/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)1
        LIBMANDIR = $(MANSOURCEPATH)3
       FILEMANDIR = $(MANSOURCEPATH)$(FILEMANSUFFIX)

               AR = ar rv
              ASM = $(SHELL) $(SERVERSRC)/tools/masm.sh
  BOOTSTRAPCFLAGS =
               CC = cc
              HCC = HccCmd
               AS = as

         COMPRESS = compress
              CPP = /usr/ccs/lib/cpp $(STD_CPP_DEFINES)
    PREPROCESSCMD = cc -E $(STD_CPP_DEFINES)
          INSTALL = bsdinst
     INSTALLFLAGS = -c
               LD = ld
              LEX = /usr/ccs/bin/lex
           LEXLIB = -ll
             YACC = /usr/ccs/bin/yacc
           CCYACC = /usr/ccs/bin/yacc
             LINT = lint
      LINTLIBFLAG = -o
         LINTOPTS = -bh
               LN = ln -s
             MAKE = make
               MV = mv
               CP = cp

               RM = rm -f
     ASM_INCLUDES =
        MANSUFFIX = 1x
     LIBMANSUFFIX = 3x
    FILEMANSUFFIX = 4
            TROFF = troff
            NROFF = nroff
         MSMACROS = -ms
        MANMACROS = -man
              TBL = tbl
              EQN = eqn
             NEQN = neqn
              COL = col

            DVIPS = dvips
            LATEX = latex

     STD_INCLUDES =
    HSTD_INCLUDES =
  STD_CPP_DEFINES = -Dusl -DUSL -DSVR4 -Di386
      STD_DEFINES = -Dusl -DUSL -DSVR4 -Di386
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES = -lsocket -lnsl -lgen
             TAGS = ctags

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS = -G -z text

         PICFLAGS = -K PIC

      CXXPICFLAGS = -K PIC

    PROTO_DEFINES =  -DNARROWPROTO

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4711
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -m 4711

      PROJECTROOT = /usr/X11R6.1

    ASMDEBUGFLAGS = -p -t -w2 -Ml
      ASM_DEFINES = -Di386
      CDEBUGFLAGS = -O
        CCOPTIONS = -Xa -Dasm=__asm -DANSICPP
        HCCOPTIONS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(STD_INCLUDES)
     HALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(HSTD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(DEFINES)
      HALLDEFINES = $(HALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(DEFINES)
         ASMFLAGS = $(ASMDEBUGFLAGS) $(ASM_DEFINES) $(ASM_INCLUDES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(ALLDEFINES)
          HCFLAGS = $(CDEBUGFLAGS) $(HCCOPTIONS) $(THREADS_CFLAGS) $(HALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB =
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)
       HLDOPTIONS = $(CDEBUGFLAGS) $(HCCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)

           LDLIBS = $(LDPOSTLIB) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

           CCLINK = $(CC)

          CXXLINK = $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =

        MACROFILE = usl.cf
           RM_CMD = $(RM)

    MOTIF_IMAKE_DEFINES = -DBuildMotif -DUseInstalledMotif

IMAKE_DEFINES = $(MOTIF_IMAKE_DEFINES) $(XENV_IMAKE_DEFINES)

         IRULESRC = $(CONFIGDIR)

        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/Project.tmpl \
			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) \
			 $(EXTRA_ICONFIGFILES)

# ----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $XConsortium: Project.tmpl /main/r61_main/6 1996/01/15 12:26:59 gildea $

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

           BINDIR = /usr/X11R6.1/bin
     BUILDINCROOT = $(TOP)
      BUILDINCDIR = $(BUILDINCROOT)/X11
      BUILDINCTOP = ..
      BUILDLIBDIR = $(TOP)/usrlib
      BUILDLIBTOP = ..
           INCDIR = $(INCROOT)/X11
           ADMDIR = /usr/adm
           LIBDIR = $(USRLIBDIR)/X11

          FONTDIR = $(LIBDIR)/fonts
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = $(LIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
        PEXAPIDIR = $(LIBDIR)/PEX
      XAPPLOADDIR = $(LIBDIR)/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = rgb
            FONTC = bdftopcf
        MKFONTDIR = mkfontdir

       DOCUTILSRC = $(TOP)/doc/util
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(TOP)/lib
          FONTSRC = $(TOP)/fonts
       INCLUDESRC = $(TOP)/X11

        SERVERSRC = $(TOP)/programs/Xserver
        SERVERTOP = ../..

       CONTRIBSRC = $(TOP)/../contrib
   UNSUPPORTEDSRC = $(TOP)/unsupported
           DOCSRC = $(TOP)/doc
           RGBSRC = $(TOP)/programs/rgb
      BDFTOPCFSRC = $(PROGRAMSRC)/bdftopcf
     MKFONTDIRSRC = $(PROGRAMSRC)/mkfontdir
    FONTSERVERSRC = $(PROGRAMSRC)/xfs
       FONTINCSRC = $(TOP)/include/fonts
        EXTINCSRC = $(TOP)/include/extensions
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)

# $XConsortium: sv4Lib.tmpl,v 1.20 95/07/06 14:06:11 kaleb Exp $

XMULIBONLY = -lXmu

          XLIBSRC = $(LIBSRC)/X11

 SOXLIBREV = 6.1
 DEPXONLYLIB =
 XONLYLIB =  -lX11

 LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

         XLIBONLY = $(XONLYLIB)

      XEXTLIBSRC = $(LIBSRC)/Xext

 SOXEXTREV = 6.1
 DEPEXTENSIONLIB =
 EXTENSIONLIB =  -lXext

 LINTEXTENSION = $(LINTLIBDIR)/llib-lXext.ln

LINTEXTENSIONLIB = $(LINTEXTENSION)
          DEPXLIB = $(DEPEXTENSIONLIB) $(DEPXONLYLIB)
             XLIB = $(EXTENSIONLIB) $(XONLYLIB)
         LINTXLIB = $(LINTXONLYLIB)

         XAUTHSRC = $(LIBSRC)/Xau

 DEPXAUTHLIB = $(USRLIBDIR)/libXau.a
 XAUTHLIB =  -lXau

 LINTXAUTH = $(LINTLIBDIR)/llib-lXau.ln

      XDMCPLIBSRC = $(LIBSRC)/Xdmcp

 DEPXDMCPLIB = $(USRLIBDIR)/libXdmcp.a
 XDMCPLIB =  -lXdmcp

 LINTXDMCP = $(LINTLIBDIR)/llib-lXdmcp.ln

           XMUSRC = $(LIBSRC)/Xmu

 SOXMUREV = 6.0
 DEPXMULIB =
 XMULIB =  -lXmu

 LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

 SOOLDXREV = 6.0
 DEPOLDXLIB =
 OLDXLIB =  -loldX

 LINTOLDX = $(LINTLIBDIR)/llib-loldX.ln

       TOOLKITSRC = $(LIBSRC)/Xt

 SOXTREV = 6.0
 DEPXTOOLONLYLIB =
 XTOOLONLYLIB =  -lXt

 LINTXTOOLONLY = $(LINTLIBDIR)/llib-lXt.ln

      DEPXTOOLLIB = $(DEPXTOOLONLYLIB) $(DEPSMLIB) $(DEPICELIB)
         XTOOLLIB = $(XTOOLONLYLIB) $(SMLIB) $(ICELIB)
     LINTXTOOLLIB = $(LINTXTOOLONLYLIB)

       AWIDGETSRC = $(LIBSRC)/Xaw

 SOXAWREV = 6.1
 DEPXAWLIB =
 XAWLIB =  -lXaw

 LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

         XILIBSRC = $(LIBSRC)/Xi

 SOXINPUTREV = 6.0
 DEPXILIB =
 XILIB =  -lXi

 LINTXI = $(LINTLIBDIR)/llib-lXi.ln

      XTESTLIBSRC = $(LIBSRC)/Xtst

 SOXTESTREV = 6.1
 DEPXTESTLIB =
 XTESTLIB =  -lXtst

 LINTXTEST = $(LINTLIBDIR)/llib-lXtst.ln

        PEXLIBSRC = $(LIBSRC)/PEX5

 SOPEXREV = 6.0
 DEPPEXLIB =
 PEXLIB =  -lPEX5

 LINTPEX = $(LINTLIBDIR)/llib-lPEX5.ln

        XIELIBSRC = $(LIBSRC)/XIE

 SOXIEREV = 6.0
 DEPXIELIB =
 XIELIB =  -lXIE

 LINTXIE = $(LINTLIBDIR)/llib-lXIE.ln

      PHIGSLIBSRC = $(LIBSRC)/PHIGS

 DEPPHIGSLIB = $(USRLIBDIR)/libphigs.a
 PHIGSLIB =  -lphigs

 LINTPHIGS = $(LINTLIBDIR)/llib-lphigs.ln

 DEPXBSDLIB = $(USRLIBDIR)/libXbsd.a
 XBSDLIB =  -lXbsd

 LINTXBSD = $(LINTLIBDIR)/llib-lXbsd.ln

           ICESRC = $(LIBSRC)/ICE

 SOICEREV = 6.0
 DEPICELIB =
 ICELIB =  -lICE

 LINTICE = $(LINTLIBDIR)/llib-lICE.ln

            SMSRC = $(LIBSRC)/SM

 SOSMREV = 6.0
 DEPSMLIB =
 SMLIB =  -lSM

 LINTSM = $(LINTLIBDIR)/llib-lSM.ln

         FSLIBSRC = $(LIBSRC)/FS

 DEPFSLIB = $(USRLIBDIR)/libFS.a
 FSLIB =  -lFS

 LINTFS = $(LINTLIBDIR)/llib-lFS.ln

         FONTLIBSRC = $(LIBSRC)/font

 DEPFONTLIB = $(USRLIBDIR)/libfont.a
 FONTLIB =  -lfont

 LINTFONT = $(LINTLIBDIR)/llib-lfont.ln

    XKBFILELIBSRC = $(LIBSRC)/xkbfile

 DEPXKBFILELIB = $(USRLIBDIR)/libxkbfile.a
 XKBFILELIB =  -lxkbfile

 LINTXKBFILE = $(LINTLIBDIR)/llib-lxkbfile.ln

          DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)

         DEPLIBS1 = $(DEPLIBS)
         DEPLIBS2 = $(DEPLIBS)
         DEPLIBS3 = $(DEPLIBS)

          SOXMREV = 1.3
          SODTREV = 1
         SOMRMREV = 1.3
         SOUILREV = 1.3
     SOACOMMONREV = 1.3
      SOSCRIPTREV = 1.3
        SOUTILREV = 1.3
      SOCREATEREV = 1.3
      SOVISUALREV = 1.3
       SOSYNTHREV = 1.3
     SOMCOMMONREV = 1.3

              XTOP = $(TOP)
              MTOP = $(TOP)
     XBUILDINCROOT = $(XTOP)
      XBUILDINCDIR = $(XBUILDINCROOT)/X11

        MBUILDINCTOP = ..
        MBUILDLIBTOP = ..
        MBUILDLIBDIR = $(MTOP)/usrlib
        MBUILDINCDIR = $(MTOP)/X11

         CLIENTSRC = $(XTOP)/clients
           DEMOSRC = $(XTOP)/demos
            LIBSRC = $(XTOP)/lib
           FONTSRC = $(XTOP)/fonts
        INCLUDESRC = $(XTOP)/X11
         SERVERSRC = $(XTOP)/server
           UTILSRC = $(XTOP)/util
        EXAMPLESRC = $(XTOP)/examples
            DOCSRC = $(XTOP)/doc
            RGBSRC = $(XTOP)/rgb
      EXTENSIONSRC = $(XTOP)/extensions

      UIL_INCLUDES = -I$(USRINCDIR)/uil

      USRINCDIR = /usr/X11R6.1/include
         UIDDIR = $(LIBDIR)/uid
        TESTSRC = $(MTOP)/tests
        TESTLIB = $(TESTSRC)/lib
  GENERALSRCLIB = $(TESTSRC)/General/lib
  GENERALSRCBIN = $(TESTSRC)/General/bin
   MANUALSRCLIB = $(TESTSRC)/Manual/lib
   MANUALSRCBIN = $(TESTSRC)/Manual/bin
     AUTOSRCLIB = $(TESTSRC)/Auto/lib
     AUTOSRCBIN = $(TESTSRC)/Auto/bin
       COMMONPP = $(GENERALSRCBIN)/Commonpp
         GENRUN = $(GENERALSRCBIN)/Genrun
         MANRUN = $(GENERALSRCBIN)/Manrun

     TESTCOMSRC = $(MANUALSRCLIB)/Common

    MTOOLKITSRC = $(TOOLKITSRC)
    MINCLUDESRC = $(MTOP)/X11
        MLIBSRC = $(MTOP)/lib
     MCLIENTSRC = $(MTOP)/clients
       MDEMOSRC = $(MTOP)/demos

     MWIDGETSRC = $(MLIBSRC)/Xm

   MRESOURCESRC = $(MLIBSRC)/Mrm
         UILSRC = $(MCLIENTSRC)/uil

            UIL = uil
         DEPUIL = $(BINDIR)/uil

   XMEXTRA_LIBS =

DEPXMLIB =
 XMLIB =  -lXm

DEPDTLIB =
 DTLIB =  -lDtWidget

DEPMRESOURCELIB =
 MRESOURCELIB =  -lMrm

DEPUILLIB =
 UILLIB =  -lUil

DEPTESTCOMLIB =
 TESTCOMLIB =  -lCommon

  LINTMRESOURCE = $(MRESOURCESRC)/libMrm.a
LINTXMWIDGETLIB = $(MWIDGETSRC)/llib-l/Xm.ln
     LINTXMTOOL = $(MTOOLKITSRC)/llib-lXt.ln
     LINTUILLIB = $(UILSRC)/llib-lUil.ln

      YACCFLAGS =
       UILFLAGS =

         RM_CMD = $(RM) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut  *.Dat

    STD_DEFINES = -Dusl -DUSL -DSVR4 -Di386  -DWINTIF -DSCHEMES_95

        DEPLIBS = $(DEPXMLIB) $(DEPXTOOLLIB) $(DEPXLIB) $(DEPDTLIB)

        DEPLIBS1 = $(DEPLIBS)
        DEPLIBS2 = $(DEPLIBS)
        DEPLIBS3 = $(DEPLIBS)

 XMULIB = $(XMULIBONLY) -z nodefs

        CONFIGDIR = $(LIBDIR)/config
    XENVCONFIGDIR = $(TOOLS)$(USRLIBDIR)/X11/config

# ----------------------------------------------------------------------
# start of Imakefile

# @(#)Imakefile	4.05 97/9/25 xlockmore
# Many "ideas" taken from xscreensaver-1.34 by Jamie Zawinski.
#

VER = xlockmore
DISTVER = xlockmore-4.05

SUB_MAKEFILES = xlock/Makefile modes/glx/Makefile modes/Makefile xmlock/Makefile

SUBDIRS = xlock modes/glx modes xmlock

MAKE_SUBDIR = for dir in $(SUBDIRS) ; do ( cd $$dir ; $(MAKE) $@ \
CC="$(CC)" CCOPTIONS="$(CCOPTIONS)" CDEBUGFLAGS="$(CDEBUGFLAGS)" \
DESTDIR="$(DESTDIR)" BINDIR="$(BINDIR)" XAPPLOADDIR="$(XAPPLOADDIR)") ; done

all ::
	@echo ""                  ; \
	echo "        ==========================================================" ; \
	echo ""                   ; \
	echo "        Did you read and edit iconfig.h? " ; \
	echo "           Otherwise it will assume a minimum configuration." ; \
	echo "        Run \"make depend\" if you can not find \"eyes.xbm\"." ; \
	echo ""                   ; \
	echo "        ==========================================================" ; \
	echo ""

all :: $(SUB_MAKEFILES)
	@$(MAKE_SUBDIR)

install ::
	@$(MAKE_SUBDIR)

install.man ::
	@$(MAKE_SUBDIR)

clean ::
	@$(MAKE_SUBDIR)

depend ::
	@$(MAKE_SUBDIR)

distclean : clean
	@$(MAKE_SUBDIR)
	-rm -f Makefile config.status config.cache config.log config.h

Makefiles :: $(SUB_MAKEFILES)

xlock/Makefile : Imakefile iconfig.h
	cd xlock  ; $(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)/xlock

modes/glx/Makefile : modes/glx/Imakefile iconfig.h
	cd modes/glx ; $(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)/modes/glx

modes/Makefile : modes/Imakefile iconfig.h
	cd modes  ; $(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)/modes

xmlock/Makefile : xmlock/Imakefile iconfig.h
	cd xmlock  ; $(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)/xmlock

# ----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	 $(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

emptyrule::

clean::
	$(RM) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut  "#"*

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

man_keywords::

# ----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

install.linkkit::
	@echo "install.linkkit in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

install.hdk::
	       @echo "install.hdk in $(CURRENT_DIR) done"

# ----------------------------------------------------------------------
# dependencies generated by makedepend

