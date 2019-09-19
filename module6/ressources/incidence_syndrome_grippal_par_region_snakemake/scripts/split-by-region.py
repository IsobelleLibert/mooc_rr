import os

# Read the CSV file into memory
data = open(snakemake.input[0], 'rb').read()
# Decode the Latin-1 character set,
# remove white space at both ends,
# and split into lines.
lines = data.decode('latin-1') \
         .strip() \
         .split('\n')

# Separate header from data table
comment = lines[0]
header = lines[1]
table = [line.split(',') for line in lines[2:]]

# Find all the regions mentioned in the table
regions = set(record[-1] for record in table)

# Create the output directory
directory = snakemake.output[0]
if not os.path.exists(directory):
    os.makedirs(directory)

# Write CSV files for each region
for region in regions:
    # Some region names contain spaces which are awkward in filenames
    region_name = '-'.join(region.split(' '))
    filename = os.path.join(directory, 'weekly-incidence-' + region_name + '.csv')
    with open(filename, 'w') as output_file:
        output_file.write(header)
        output_file.write('\n')
        for record in table:
            # Write only the records for right region
            if record[-1] == region:
                output_file.write(','.join(record))
                output_file.write('\n')
