# Libraries used by this script:
import csv       # for reading CSV files
import os        # for path manipulations

with open(snakemake.output[0], 'w') as result_file:
    for filename in snakemake.input:
        region = '-'.join(os.path.splitext(filename)[0].split('-')[2:])
        with open(filename, 'r') as csv_file:
            csv_reader = csv.reader(csv_file)
            csv_reader.__next__()
            peak_year = None
            peak_incidence = 0
            for year, incidence in csv_reader:
                incidence = int(incidence)
                if incidence > peak_incidence:
                    peak_incidence = incidence
                    peak_year = year
        result_file.write(region)
        result_file.write(', ')
        result_file.write(peak_year)
        result_file.write('\n')
