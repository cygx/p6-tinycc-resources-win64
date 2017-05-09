REVISION := $(shell cat REVISION)
REPO     := http://repo.or.cz/tinycc.git
FILES    := build/COPYING \
            build/win32/libtcc.dll \
            build/win32/lib \
            build/win32/include

update: META6.json

META6.json: REVISION
	make -C build/win32
	mkdir -p resources/win64
	cp -r $(FILES) resources/win64
	perl6 meta.p6

REVISION: pull

pull: build
	git -C build pull
	if [ "$(REVISION)" != `git -C build describe` ]; \
		then git -C build describe > REVISION; fi

build:
	git clone -b mob --single-branch $(REPO) build
