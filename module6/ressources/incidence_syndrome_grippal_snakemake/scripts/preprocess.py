# Libraries used by this script:
import datetime  # for date conversion
import csv       # for writing output to a CSV file

# Read the CSV file into memory
data = open(snakemake.input[0], 'rb').read()
# Decode the Latin-1 character set,
# remove white space at both ends,
# and split into lines.
lines = data.decode('latin-1') \
         .strip() \
         .split('\n')
# Discard the first line, which contains a comment
data_lines = lines[1:]
# Split each line into columns
table = [line.split(',') for line in data_lines]

# Remove records with missing data and write
# the removed records to a separate file for inspection.
with open(snakemake.output.errorlog, "w") as errorlog:
    valid_table = []
    for row in table:
        missing = any([column == '' for column in row])
        if missing:
            errorlog.write("Missing data in record\n")
            errorlog.write(str(row))
            errorlog.write("\n")
        else:
            valid_table.append(row)

# Extract the two relevant columns, "week" and "inc"
week = [row[0] for row in valid_table]
assert week[0] == 'week'
del week[0]
inc = [row[2] for row in valid_table]
assert inc[0] == 'inc'
del inc[0]
data = list(zip(week, inc))

# Check for obviously out-of-range values
with open(snakemake.output.errorlog, "a") as errorlog:
    for week, inc in data:
        if len(week) != 6 or not week.isdigit():
            errorlog.write("Suspect value in column 'week': {week}\n")
        if not inc.isdigit():
            errorlog.write("Suspect value in column 'inc': {inc}\n")

# Convert year/week by date of the corresponding Monday,
# then sort by increasing date
converted_data = \
    [(datetime.datetime.strptime(year_and_week + ":1" , '%G%V:%u').date(), inc)
     for year_and_week, inc in data]
converted_data.sort(key = lambda record: record[0])

# Check that consecutive dates are seven days apart
with open(snakemake.output.errorlog, "a") as errorlog:
    dates = [date for date, _ in converted_data]
    for date1, date2 in zip(dates[:-1], dates[1:]):
        if date2-date1 != datetime.timedelta(weeks=1):
            errorlog.write(f"{date2-date1} between {date1} and {date2}\n")

# Write data to a CSV file with two columns:
#  1. the date of the Monday of each week, in ISO format
#  2. the incidence estimate for that week
with open(snakemake.output.data, "w") as csvfile:
    csv_writer = csv.writer(csvfile)
    for row in converted_data:
        csv_writer.writerow(row)
