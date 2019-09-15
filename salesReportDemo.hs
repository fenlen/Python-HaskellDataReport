module SalesReportDemo where
import SalesRecord
import SalesData
import SalesReport
import Control.Monad

record :: Int -> Record

record x
    | x == 1 = ("Scotland", "Desktop", 2017, 900, 25, 22500) 
    | x == 2 = ("England", "Laptop", 2017, 1100, 75, 82500)
    | x == 3 = ("Wales","Printer",2017, 120, 15, 1800 )
    | x == 4 = ("England","Printer",2017, 120, 60, 7200)
    | x == 5 = ("England","Desktop",2017, 900, 50, 45000)
    | x == 6 = ("Wales","Desktop",2017,900,20, 18000 )
    | x == 7 = ("Scotland","Printer",2017,120,25, 3000)
    | x == 8 = ("Wales","Laptop",2017,1100,15,16500 )
    | x == 9 = ("Scotland","Laptop",2017,1100,20,22000)
    | x == 10 = ("England","Printer",2018,120,70,8400)
    | x == 11 = ("Scotland","Laptop",2018,1100,100,110000)
    | x == 12 = ("Wales","Printer",2018,120,25,3000 )
    | x == 13 = ("Wales","Desktop", 2018,900,25,22500)
    | x == 14 = ("Scotland","Printer",2018,120,75,9000)
    | x == 15 = ("England","Laptop",2018,1100,90,99000)
    | x == 16 = ("England","Desktop",2018,900,60,54000)
    | x == 17 = ("Wales","Laptop", 2018,1100,20,22000)
    | x == 18 = ("Scotland","Desktop",2018,900,125,112500)
    | x == 19 = ("Germany", "Fanta", 2017, 2, 25, 50)
    | x == 20 = ("Germany", "Coca-Cola", 2018, 3, 75, 225)
    | x == 21 = ("Germany", "Sprite", 2019, 1, 15, 15 )
    | x == 22 = ("France","Sprite", 2018, 3, 10, 30)
    | x == 23 = ("France","Fanta", 2017, 4, 20, 80)
    | x == 24 = ("France","Sprite", 2019, 3, 10, 30)
    | x == 25 = ("Belgium","Coca-Cola", 2018,4,25, 100)
    | x == 26 = ("Belgium","Fanta", 2017,3,15,45)
    | x == 27 = ("Belgium","Coca-Cola", 2017,4,20,80)

table :: Int -> Table

table x
    | x == 1    = [record 1, record 2, record 3, record 4, record 5, record 6, record 7, record 8, record 9, record 10, record 11, record 12, record 13, record 14, record 15, record 16, record 17, record 18]
    | x == 2    = [record 19, record 20, record 21, record 22, record 23, record 24, record 25, record 26, record 27]
    | otherwise = []


records = table 1
years = distinctYears records
regions = distinctRegions records
products = distinctProducts records

firstReport = report1 records years
secondReport = report2 records years regions
thirdReport = report3 records years products


records1= table 2
years1 = distinctYears records1
regions1 = distinctRegions records1
products1 = distinctProducts records1


firstReport1 = report1 records1 years1
secondReport1 = report2 records1 years1 regions1
thirdReport1 = report3 records1 years1 products1
printer xs = forM_ xs print