# Read in the data and convert the dates
data = read.csv(snakemake@input[[1]])
names(data) <- c("date", "incidence")
data$date <- as.Date(data$date)

# Plot the complete incidence dataset
png(filename=snakemake@output[[1]])
plot(data, type="l", xlab="Date", ylab="Weekly incidence")
dev.off()

# Zoom on the last four years
png(filename=snakemake@output[[2]])
plot(tail(data, 4*52), type="l", xlab="Date", ylab="Weekly incidence")
dev.off()
