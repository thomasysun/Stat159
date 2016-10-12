# variable for md files
mds = $(wildcard paper/sections/*.md)


# phony target
.PHONY: all data tests eda regression report clean


# all
all: eda regression report

#data
data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" -o data/Advertising.csv

tests:
	cd code && Rscript -e 'library("testthat")' ; test_dir("tests")'

# report.Rmd to report.pdf
report/report.pdf: report/report.Rmd
	cd report && Rscript -e 'library(rmarkdown) ; render("report.Rmd")'

# sections to paper.html
paper.html: $(mds)
	pandoc -s paper/paper.md -o paper/paper.html


# clean outputs
clean:
	rm paper\paper.html