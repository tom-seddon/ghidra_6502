GHIDRA?=$(HOME)/ghidra_9.0

##########################################################################
##########################################################################

BDEST:=./dist/6502_2
GDEST:=$(GHIDRA)/Ghidra/Processors

.PHONY:all
all:
	cd data && ant "-Drepo.dir=$(GHIDRA)" "-Dframework.path=$(GHIDRA)/Ghidra/Framework"

	rm -Rf $(BDEST)
	mkdir -p $(BDEST)
	cp LICENSE.txt $(BDEST)/
	touch $(BDEST)/Module.manifest
	cp -R data $(BDEST)/

	rm -Rf $(GDEST)/6502_2
	cp -R $(BDEST) $(GDEST)/
