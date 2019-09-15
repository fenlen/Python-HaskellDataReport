from sales_record import Record
from sales_data import RecordTable
from sales_report import Report


record_list = []
record_list.append(Record("Scotland", "Desktop", 2017, 900, 25, 22500))
record_list.append(Record("England", "Laptop", 2017, 1100, 75, 82500))
record_list.append(Record("Wales","Printer",2017, 120, 15, 1800 ))
record_list.append(Record("England","Printer",2017, 120, 60, 7200))
record_list.append(Record("England","Desktop",2017, 900, 50, 45000))
record_list.append(Record("Wales","Desktop",2017,900,20, 18000 ))
record_list.append(Record("Scotland","Printer",2017,120,25, 3000))
record_list.append(Record("Wales","Laptop",2017,1100,15,16500 ))
record_list.append(Record("Scotland","Laptop",2017,1100,20,22000))
record_list.append(Record("England","Printer",2018,120,70,8400,))
record_list.append(Record("Scotland","Laptop",2018,1100,100,110000))
record_list.append(Record("Wales","Printer",2018,120,25,3000 ))
record_list.append(Record("Wales","Desktop", 2018,900,25,22500))
record_list.append(Record("Scotland","Printer",2018,120,75,9000))
record_list.append(Record("England","Laptop",2018,1100,90,99000))
record_list.append(Record("England","Desktop",2018,900,60,54000))
record_list.append(Record("Wales","Laptop", 2018,1100,20,22000))
record_list.append(Record("Scotland","Desktop",2018,900,125,112500))

record_list2 = []
record_list2.append(Record("Germany", "Fanta", 2017, 2, 25, 50))
record_list2.append(Record("Germany", "Coca-Cola", 2018, 3, 75, 225))
record_list2.append(Record("Germany", "Sprite", 2019, 1, 15, 15 ))
record_list2.append(Record("France","Sprite", 2018, 3, 10, 30))
record_list2.append(Record("France","Fanta", 2017, 4, 20, 80))
record_list2.append(Record("France","Sprite", 2019, 3, 10, 30))
record_list2.append(Record("Belgium","Coca-Cola", 2018,4,25, 100))
record_list2.append(Record("Belgium","Fanta", 2017,3,15,45))
record_list2.append(Record("Belgium","Coca-Cola", 2017,4,20,80))

table = RecordTable(record_list)
table2 = RecordTable(record_list2)
report = Report(table)
report2 = Report(table2)
print("Year Sum of Sales\n", report.report_years())
print("Region Year Sum of Sales\n", report.report_rp(True))
print("Product Year Sum of Sales\n", report.report_rp(False))

# print("Year Sum of Sales\n", report2.report_years())    # For the second dataset
# print("Region Year Sum of Sales\n", report2.report_rp(True))    # For the second dataset
# print("Product Year Sum of Sales\n", report2.report_rp(False)) # For the second dataset

