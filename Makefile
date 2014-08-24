all: pdf word md

 
pdf:
	Rscript -e "library(rmarkdown); render('antweb_paper.Rmd', quiet = TRUE)"

word:
	Rscript -e "library(rmarkdown); render('antweb_paper.Rmd', output_format = 'word_document', quiet = TRUE)"

md:
	Rscript -e "library(rmarkdown); render('antweb_paper.Rmd', output_format = 'md_document', quiet = TRUE)"

clean:
	rm -rf antweb_paper_cache