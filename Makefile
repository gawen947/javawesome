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
	$(INSTALL) wm_server $(DESTDIR)$(BINDIR)
	$(INSTALL) wm_add $(DESTDIR)$(BINDIR)

 	# stamp installed file with commit hash
	$(ECHO) ""                      >> $(DESTDIR)$(BINDIR)/wm_server
	$(ECHO) ""                      >> $(DESTDIR)$(BINDIR)/wm_add
	$(ECHO) "# (commit: $(commit))" >> $(DESTDIR)$(BINDIR)/wm_add
	$(ECHO) "# (commit: $(commit))" >> $(DESTDIR)$(BINDIR)/wm_server
