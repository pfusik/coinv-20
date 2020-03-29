run: coinv20.xex
	start $<

coinv20.xex: coinv20.obx
	xebin p -o $@ -a -0x3bff $<

coinv20.obx: coinv20.asx trace.asx cases.asx
	xasm -q -o $@ $< -l

trace.asx: png2trace.py sketchbw.png
	python $< >$@

cases.asx: cases.pl
	perl $< >$@

clean:
	rm coinv20.xex coinv20.obx coinv20.lst trace.asx
