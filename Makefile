.PHONY: feladatsor

pdf:
	[ -d build ] || mkdir -p build
	pandoc $(FILES) --template=template.tex -o build/feladatsor.pdf \
	--metadata title="$(TITLE)" \
	--metadata subtitle="$(SUBTITLE)" \
	--metadata version="$(VERSION)" \
	--metadata author="$(AUTHOR)"
	zip -9 -r \
	--exclude=*.git* \
	--exclude=*.github* \
	--exclude=*build* \
	--exclude=Makefile \
	--exclude=*minta* \
	--exclude=pdf-style.sty \
	--exclude=template.tex \
	--exclude=entrypoint.sh \
	--exclude=Dockerfile\
	build/forras.zip .
	! [ -d minta ] || zip -9 -r build/minta.zip minta
default: pdf