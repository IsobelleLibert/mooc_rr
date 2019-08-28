# Read in the data and convert the dates
data = read.csv(snakemake@input[[1]])
names(data) <- c("date", "incidence")
data$date <- as.Date(data$date)

# A function that extracts the peak for year N
yearly_peak = function(year) {
      start = paste0(year-1,"-08-01")
      end = paste0(year,"-08-01")
      records = data$date > start & data$date <= end
      sum(data$incidence[records])
      }

# The years for which we have the full peak
years <- 1986:2018

# Make a new data frame for the annual incidences
annual_data = data.frame(year = years,
                         incidence = sapply(years, yearly_peak))
# write output file
write.csv(annual_data,
          file=snakemake@output[[1]],
          row.names=FALSE)
