AUTOBUILT = $(patsubst translations/%.po,%.tex, $(wildcard translations/*.po))

build:
	po4a po4a.conf
	for doc in *.tex; do pdflatex $$doc; done

clean:
	$(RM) *.pdf *.aux *.log $(AUTOBUILT)
