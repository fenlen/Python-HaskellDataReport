class Record:
    def __init__(self, region, product, year, unit_price, units_sold, sales):
        self.region = region
        self.product = product
        self.year = year
        self.unit_price = unit_price
        self.units_sold = units_sold
        self.sales = sales

    def __repr__(self):
        return "Region: {0}, Product: {1}, Year: {2}, UnitPrice: {3}, UnitsSold: {4}, Sales: {5}".format(self.region,
                                                                                                         self.product,
                                                                                                         self.year,
                                                                                                         self.unit_price,
                                                                                                         self.units_sold,
                                                                                                         self.sales)
