# Makefile

all:
	@if [ ! -d logs ] ; then mkdir logs ; fi
	./bld.sh /opt/gcc-4.9.2 2>&1 | tee logs/bld-$$(date +'%Y%m%d-%H%M%S').log

clean-all:
	rm -rf bld src rtf archives logs

clean:
	rm -rf bld src rtf *~
