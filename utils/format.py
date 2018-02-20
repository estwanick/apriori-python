def print_results(db, orders, rules, support, confidence):

    print 'Orders for: {}'.format(db)
    print 'Meeting Support: {:.2f} and Confidence: {:.2f}'.format(support, confidence)

    for order in orders:
        print '\t {}'.format(order)
    
    print 'Associate Rules: {}'.format(db)

    for pairs in rules:
        for rule in pairs:
            print '\t {}'.format(rule)