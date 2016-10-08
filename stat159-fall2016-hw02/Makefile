
# phony target
.PHONY: data all clean


# all
all: report.html eda-output.txt regression.RData

#data
data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" -o data/Advertising.csv

# report.Rmd to report.html
report.html: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; Rscript -e "library(knitr); knit('report.Rmd');" ; pandoc -s report.md -o report.html; rm report.md

# sections to paper.html
regression.RData: code/regression-script.r data/Advertising.csv
	RScript code/regression-script.r

# eda
eda-output.txt: code/eda-script.R data/Advertising.csv
	RScript code/eda-script.R

# clean outputs
clean:
	rm -f report/report.html

  