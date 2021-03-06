include $(GOROOT)/src/Make.inc

TARG=llvm
CGOFILES=core.go\
	 executionengine.go\
	 target.go\
	 transforms_scalar.go\
	 transforms_ipo.go\
	 analysis.go\
	 bitwriter.go

CGO_CFLAGS=`llvm-config --cflags`
CGO_LDFLAGS=`llvm-config --ldflags` -Wl,-L`llvm-config --libdir` -lLLVM-`llvm-config --version`

include $(GOROOT)/src/Make.pkg
