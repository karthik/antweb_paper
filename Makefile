all: pdf word md

 
pdf:
	Rscript -e "library(rmarkdown); render('antweb_paper.Rmd')"

word:
	Rscript -e "library(rmarkdown); render('antweb_paper.Rmd', output_format = 'word_document')"

md:
	Rscript -e "library(rmarkdown); render('antweb_paper.Rmd', output_format = 'md_document')"

clean:
	rm -rf antweb_paper_cache