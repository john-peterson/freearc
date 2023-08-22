DEFINES  = -DFREEARC_WIN -DFREEARC_INTEL_BYTE_ORDER -D_WIN32 -D_WINDOWS -D_UNICODE -DUNICODE
TEMPDIR  = /tmp/out/FreeArc
GHCDIR   = /usr/lib/ghc
MGW      = /usr/i686-w64-mingw32

#For ghc 6.10.3
LIBDIR   = -B$(GHCDIR)/lib -B$(MGW)/lib
INCDIR   = -I$(GHCDIR)/include -I$(MGW)/include
GCC_EXE  = /usr/bin/i686-w64-mingw32-g++
GCC      = $(GCC_EXE) $(LIBDIR) $(INCDIR) -march=i486 -mtune=pentiumpro
DLLWRAP  = /usr/bin/i686-w64-mingw32-dllwrap $(LIBDIR)
WINDRES  = /usr/bin/i686-w64-mingw32-windres

#For ghc 6.12.3
#LIBDIR   = $(GHCDIR)\gcc-lib
#GCC      = $(GHCDIR)\mingw\bin\gcc.exe -B$(LIBDIR) -I$(GHCDIR)\include\mingw -I$(GHCDIR)\mingw\include -I$(GHCDIR)\lib\include
#DLLWRAP  = $(GHCDIR)\mingw\bin\dllwrap.exe -B$(LIBDIR)
#WINDRES  = $(GHCDIR)\mingw\bin\windres.exe
