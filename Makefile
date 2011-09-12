INSTALL  = install -m 555
RM       = rm
ECHO     = echo
JAVAC    = javac
PREFIX  ?= /usr/local
BINDIR  ?= $(PREFIX)/bin

commit = $(shell ./hash.sh)

.PHONY: all clean

all:

Test: 
	$(JAVAC) Test.java

run-test: Test
	./javax Test

clean:
	$(RM) -f *.class

install:
	$(INSTALL) javax $(DESTDIR)$(BINDIR)

 	# stamp installed file with commit hash
	$(ECHO) ""                      >> $(DESTDIR)$(BINDIR)/javax
	$(ECHO) "# (commit: $(commit))" >> $(DESTDIR)$(BINDIR)/javax
