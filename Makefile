# Makefile for STS.
#

DESTDIR?=
PREFIX?=/usr

DATA=$(DESTDIR)$(PREFIX)/share
IMAGES=$(DATA)/images

all:

# Install

install:
	install -m 0755 -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 -d $(DATA)/slitaz/sts
	install -m 0755 -d $(IMAGES)
	cp -a sts* $(DESTDIR)$(PREFIX)/bin
	cp -a openbox $(DATA)/slitaz/sts
	cp -a tint2 $(DATA)/slitaz/sts
	cp -a lxpanel $(DATA)/slitaz/sts
	cp -a applications $(DATA)
	cp -a images/sts-background.jpg $(IMAGES)

