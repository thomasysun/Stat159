
# phony target
.PHONY: all data clean


# all
all: report.html eda-output.txt regression.RData

#data
data:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

# report.Rmd to report.html
report.html: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc report/report.Rmd -s -o report/report.html

# sections to paper.html
regression.RData: code/regression-script.r data/Advertising.csv
	RScript -e 'save(regression, regression_summary, file = 'data//regression.RData')'

# eda
eda-output.txt: code/eda-script.R data/Advertising.csv
	RScript code/eda-script.R

# clean outputs
clean:
	rm report/report.html