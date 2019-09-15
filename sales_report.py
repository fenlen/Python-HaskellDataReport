import copy

class Report:

    def __init__(self, table):
        self.table = table

    def report_years(self):
        distinct_years = set([x.year for x in self.table.records])
        final_report = {}
        for i in distinct_years:
            final_report[i] = [int(x.sales) for x in self.table.records if x.year == i]
            final_report[i] = sum(final_report[i])
        return final_report

    def report_rp(self, variant):
        """Reports either region by year or product by year. For variant == true, reports by region,
        variant == false, reports by product"""
        if variant == True:
            distincts = set([x.region for x in self.table.records])
        else:
            distincts = set([x.product for x in self.table.records])
        temp_storage = copy.deepcopy(self.table)    # saves a separate copy instead of a reference
        reports = {}
        for i in distincts:
            self.table.clear_records()
            if variant == True:
                self.table.add_many_records([x for x in temp_storage.records if x.region == i])
            else:
                self.table.add_many_records([x for x in temp_storage.records if x.product == i])
            reports[i] = self.report_years()
        self.table = temp_storage
        return reports
