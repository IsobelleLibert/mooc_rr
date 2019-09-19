# Read in the data and convert the dates
data = read.csv(snakemake@input[[1]])

# Plot the histogram
png(filename=snakemake@output[[1]])
hist(data$incidence,
     breaks=10,
     xlab="Annual incidence",
     ylab="Number of observations",
     main="")
dev.off()
