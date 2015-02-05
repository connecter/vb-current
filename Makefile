dist/linux/jitsi-videobridge-linux-x64-build.SVN.zip:
	mkdir -p dist
	ant -f base/build.xml -Ddist=../dist dist.lin64

clean:
	rm -R dist

.PHONY: clean
