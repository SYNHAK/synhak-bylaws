all: bylaws.pdf

%.pdf: %.fo
	fop $< -pdf $*.pdf

%.fo: %.docbook
	xsltproc --stringparam section.label.includes.component.label 1 --stringparam section.autolabel 1 /usr/share/sgml/docbook/xsl-stylesheets/fo/docbook.xsl $< > $*.fo

clean:
	rm -f *.fo *.pdf
