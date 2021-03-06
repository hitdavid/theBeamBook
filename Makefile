ASSET_CHAPTERS = $(shell find chapters -type f)

all: chapters/contributors.txt beam-book.pdf index.html

chapters/contributors.txt: .git
	./bin/gitlog.sh $@

beam-book.pdf:  chapters/opcodes_doc.asciidoc book.asciidoc chapters/contributors.txt $(ASSET_CHAPTERS)
	asciidoctor-pdf  -r ./style/custom-pdf-converter.rb -r asciidoctor-diagram -r ./style/custom-admonition-block.rb  -a config=./style/ditaa.cfg --doctype=book -a pdf-style=./style/pdf-theme.yml book.asciidoc -a scripts=cjk -a pdf-theme=default-with-fallback-font -o $@  --trace

index.html: $(ASSET_CHAPTERS)
	cp -r images site
	asciidoctor -r asciidoctor-diagram  -r ./style/custom-admonition-block.rb -a config=style/ditaa.cfg --backend=html5 --doctype=book -o site/index.html book.asciidoc --trace
	rsync -R code/*/*.png site

code/book/ebin/generate_op_doc.beam: code/book/src/generate_op_doc.erl
	erlc -o $(dir $@) $<

chapters/opcodes_doc.asciidoc: genop.tab code/book/ebin/generate_op_doc.beam
	erl -pa code/book/ebin/ -noshell -s generate_op_doc from_shell genop.tab chapters/opcodes_doc.asciidoc

genop.tab:
	wget -O genop.tab https://raw.githubusercontent.com/erlang/otp/master/lib/compiler/src/genop.tab
	touch $@

clean:
	find site -type f -name '.[^gitignore]*' -delete
	rm -rfv beam-book.pdf site/index.html site/*.png site/*.md5 xml/*.png xml/*.md5 xml/beam-book-from-ab.xml ./images/diag-*.png site/code/*/*.png site/images/*
	rmdir site/code/* site/images site/code
