module SalesReport where
import SalesRecord
import SalesData
import Control.Monad


distinctYears :: Table -> [Year]
distinctYears [] = []
distinctYears ((_,_,year,_,_,_):records) =
    if year `elem` distinctYears records
        then distinctYears records
        else [year] ++ (distinctYears records)

distinctRegions :: Table -> [Region]
distinctRegions [] = []
distinctRegions ((region, _,_,_,_,_):records) =
    if region `elem` distinctRegions records
        then distinctRegions records
        else [region] ++ (distinctRegions records)

distinctProducts :: Table -> [Product]
distinctProducts [] = []
distinctProducts((_,product,_,_,_,_):records) =
    if product `elem` distinctProducts records
        then distinctProducts records
        else [product] ++ (distinctProducts records)

individualSalesForYear :: Table -> Year -> [Sales]
individualSalesForYear [] _ = []
individualSalesForYear ((_,_,recordYear,_,_,sales):records) year = 
    if recordYear == year
        then [sales] ++ (individualSalesForYear records year)
        else individualSalesForYear records year

totalSalesForYear :: Year -> [Sales] -> (Year, Sales)
totalSalesForYear year salesList = (year, foldr (+) 0 salesList)


report1 :: Table -> [Year] -> [(Year, Sales)]       
report1 [] [] = []
report1 table (year:years) =
    if null years
        then [totalSalesForYear year (individualSalesForYear table year)]
        else [totalSalesForYear year (individualSalesForYear table year)] ++ (report1 table years)


filterByRegion :: Table -> Region -> Table
filterByRegion [] _ = []
filterByRegion ((recordRegion,x,y,z,a,b):records) region =
    if recordRegion == region
        then [(recordRegion,x,y,z,a,b)] ++ (filterByRegion records region)
        else filterByRegion records region 

filterByProduct :: Table -> Product -> Table
filterByProduct [] _ = []
filterByProduct ((x,recordProduct,y,z,a,b):records) product =
    if recordProduct == product
        then [(x,recordProduct,y,z,a,b)] ++ (filterByProduct records product)
        else filterByProduct records product 

        

report2 :: Table -> [Year] -> [Region] -> [(Region, [(Year, Sales)])]
report2 [] [] [] = []
report2 table years (region:regions) =
    if null regions
        then [(region, (report1 (filterByRegion table region) years))]
        else [(region, (report1 (filterByRegion table region) years))] ++ (report2 table years regions)

report3 :: Table -> [Year] -> [Product] -> [(Product, [(Year, Sales)])]
report3 [] [] [] = []
report3 table years (product:products) =
    if null products
        then [(product, (report1 (filterByProduct table product) years))]
        else [(product, (report1 (filterByProduct table product) years))] ++ (report3 table years products)
