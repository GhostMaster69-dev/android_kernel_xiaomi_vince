NAME ?= Unitrix-Kernel
DATE := $(shell date "+%d%m%Y-%I%M")

VERSION := $(shell cat ../Makefile | grep VERSION | head -n 1 | sed "s|.*=||1" | sed "s| ||g")
PATCHLEVEL := $(shell cat ../Makefile | grep PATCHLEVEL | head -n 1 | sed "s|.*=||1" | sed "s| ||g")
SUBLEVEL := $(shell cat ../Makefile | grep SUBLEVEL | head -n 1 | sed "s|.*=||1" | sed "s| ||g")

SZIP := $(NAME)-$(VERSION).$(PATCHLEVEL).$(SUBLEVEL)-STABLE-$(DATE).zip
BZIP := $(NAME)-$(VERSION).$(PATCHLEVEL).$(SUBLEVEL)-BETA-$(DATE).zip
TZIP := $(NAME)-$(VERSION).$(PATCHLEVEL).$(SUBLEVEL)-TEST-$(DATE).zip

EXCLUDE := Makefile *.git* *.jar* Unitrix* *placeholder*

stable: $(SZIP)
beta: $(BZIP)
test: $(TZIP)

$(SZIP):
	@echo "Creating ZIP: $(SZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Generating SHA1..."
	@sha1sum "$@" > "$@.sha1"
	@cat "$@.sha1"
	@echo "Done."
	
$(BZIP):
	@echo "Creating ZIP: $(BZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Generating SHA1..."
	@sha1sum "$@" > "$@.sha1"
	@cat "$@.sha1"
	@echo "Done."
	
$(TZIP):
	@echo "Creating ZIP: $(TZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Generating SHA1..."
	@sha1sum "$@" > "$@.sha1"
	@cat "$@.sha1"
	@echo "Done."		

clean:
	@rm -vf *.zip*
	@rm -vf zImage
	@echo "Done."
