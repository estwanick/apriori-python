# pylint: disable=E1601
def print_results(db, orders, apriori, support, confidence):
    rules = apriori['confidence']
    frequency = apriori['support']

    print 'Database: {}'.format(db)

    print '\t All Orders'

    for order in orders:
        print '\t\t {}'.format(order)

    print '\t Frequency Table: items with support greater than {:.2f}% support'.format(support * 100)
    for item_group in frequency:
        for item in item_group:
            print '\t\t {} : {}'.format(item, item_group[item])

    print '\t Associate Rules: rules with confidence greater than or equal to {:.2f}%'.format(confidence * 100)

    for pairs in rules:
        for rule in pairs:
            print '\t\t {}'.format(rule)