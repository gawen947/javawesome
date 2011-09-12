INSTALL  = install -m 555
RM       = rm
JAVAC    = javac
PREFIX  ?= /usr/local
BINDIR  ?= $(PREFIX)/bin

.PHONY: all clean

all: Test

Test: 
	$(JAVAC) Test.java

run-test: Test
	./javax Test

clean:
	$(RM) *.class

install:
	$(INSTALL) javax $(DESTDIR)$(BINDIR)
