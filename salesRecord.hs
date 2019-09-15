module SalesRecord where

type Region = [Char]
type Product = [Char]
type Year = Integer
type UnitPrice = Integer
type UnitsSold = Integer
type Sales = Integer

type Record = (Region, Product, Year, UnitPrice, UnitsSold, Sales)