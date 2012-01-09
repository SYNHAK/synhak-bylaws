all: bylaws.pdf

%.pdf: %.fo
	fop $< -pdf $*.pdf

%.fo: %.docbook
	xsltproc /usr/share/sgml/docbook/xsl-stylesheets/fo/docbook.xsl $< > $*.fo

clean:
	rm -f *.fo *.pdf
