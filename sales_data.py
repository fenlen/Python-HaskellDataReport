class RecordTable:

    def __init__(self, records=[]):
        """Accepts a list of records with which a new table will be created, alternatively an
        empty table can be created by passing nothing and records can be added in with the other methods"""
        self.records = []
        self.records.extend(records)

    def add_many_records(self, records):
        """Accepts a list of records to be added to the table"""
        self.records.extend(records)

    def add_one_record(self, record):
        """Accepts just a single record to be added to the table"""
        self.records.append(record)

    def clear_records(self):
        self.records.clear()

    def __repr__(self):
        temp = '\n'.join([repr(x) for x in self.records])
        return temp
