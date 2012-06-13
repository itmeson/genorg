all: sync push

build:
	for x in daily/*/*.tex; do pdflatex $x; done;

sync:
	rsync -avz ../genorg ~/Dropbox/JWU/Teaching/GenOrg/

push:
	git push

pull:
	git pull

