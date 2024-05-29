# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"D303000","system":"readv2"},{"code":"D306.00","system":"readv2"},{"code":"D303600","system":"readv2"},{"code":"D303611","system":"readv2"},{"code":"D306.11","system":"readv2"},{"code":"88A8.11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('coagulopathy-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["coagulopathy-elixhauser-primary-care-fibrin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["coagulopathy-elixhauser-primary-care-fibrin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["coagulopathy-elixhauser-primary-care-fibrin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
