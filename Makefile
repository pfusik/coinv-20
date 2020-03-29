run: coinv20.xex
	start $<

coinv20.xex: coinv20.asx trace.asx
	xasm -q -o $@ $< -l

trace.asx: png2trace.py sketchbw.png
	python $< >$@

clean:
	rm coinv20.xex trace.asx
