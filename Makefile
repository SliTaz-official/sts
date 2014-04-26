# Makefile for STS.
#

DESTDIR?=
PREFIX?=/usr
IMAGES=$(DESTDIR)$(PREFIX)/share/images

all:

# Install

install:
	install -m 0755 -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 -d $(DESTDIR)$(PREFIX)/share/sts
	install -m 0755 -d $(DESTDIR)$(PREFIX)/share/images
	cp -a sts* $(DESTDIR)$(PREFIX)/bin
	cp -a openbox $(DESTDIR)$(PREFIX)/share/sts
	cp -a lxpanel $(DESTDIR)$(PREFIX)/share/sts
	cp -a applications $(DESTDIR)$(PREFIX)/share
	cp -a images/sts-background.jpg $(IMAGES)
