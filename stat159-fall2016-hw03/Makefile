
cdcs = cd code/scripts && Rscript
tests = test-that.R
eda = eda-script.R
regression = regression-script.R
session = session-info-script.R
report = report/report.html

# phony target
.PHONY: all data tests session eda regression report clean


# all
all: eda regression report

#data
data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" -o data/Advertising.csv

# runs code in session.R
session:
	$(cdcs) $(session)

# runs code in test-that.R	
tests:
	cd code && Rscript $(tests)
	
# runs code in eda-script.R
eda:
	$(cdcs) $(eda)
	
# runs code in regression-script.R
regression:
	$(cdcs) $(regression)

# report.Rmd to report.html
report: report/report.Rmd
	cd report && Rscript -e 'library(rmarkdown) ; render("report.Rmd")'

# clean outputs
clean:
	rm -f report/report.html