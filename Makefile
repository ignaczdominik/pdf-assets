.PHONY: feladatsor

pdf:
	echo 'title: $(TITLE)\nsubtitle: $(SUBTITLE)\nversion: $(version) \nauthor: $(author)' > metadata.yml
	[ -d build ] || mkdir -p build
	pandoc \
	$(FILES) \
	--metadata-file=metadata.yml -s \
	--template=template.tex \
	--standalone \
	-o ./build/feladatsor.pdf
	zip -9 -r --exclude=*.git* --exclude=*.github* --exclude=*build* --exclude=Makefile --exclude=*minta* forras.zip .
	! [ -d minta ] || zip -9 -r minta.zip minta
	mv forras.zip build/forras.zip
	! [ -d minta.zip ] || mv minta.zip build/minta.zip
default: pdf