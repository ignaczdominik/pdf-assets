.PHONY: feladatsor

pdf:
	[ -d build ] || mkdir -p build
	pandoc $(FILES) --template=template.tex -o build/feladatsor.pdf \
	--metadata title="$(TITLE)" \
	--metadata subtitle="$(SUBTITLE)" \
	--metadata version="$(VERSION)" \
	--metadata author="$(AUTHOR)"
	zip -9 -r --exclude=*.git* --exclude=*.github* --exclude=*build* --exclude=Makefile --exclude=*minta* forras.zip .
	! [ -d minta ] || zip -9 -r minta.zip minta
	mv forras.zip build/forras.zip
	! [ -d minta.zip ] || mv minta.zip build/minta.zip
default: pdf