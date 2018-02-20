import itertools

def num_transactions(data):
    return len(data)

def filter_by_support(frequency_map, support, transactions):
    filtered_items = {}
    for item in frequency_map:
        if frequency_map[item] >= (transactions * support):
            filtered_items[item] = frequency_map[item]
    return filtered_items

def filter_items(data):
    items = {}
    for order in data:
        for item in order:
            items[item] = item

    items_array = []
    for item in items:
        items_array.append(item)

    return items_array

def get_combinations(items, length):
    return itertools.combinations(items, length)

def biggest_order(data):
    max_length = -1
    for order in data:
        if len(order) > max_length:
            max_length = len(order)
    return max_length

# list1: [] or str
# list2: [] or str
def is_subset(list1, list2):
    set1 = set([list1] if type(list1) is str else list1)
    set2 = set([list2] if type(list2) is str else list2)
    return set1.issubset(set2)

# data: all transaction
# combinations: array of sets
def multiple_item_frequency(data, combinations):
    subset_frequency = {}
    for subset in combinations:
        for order in data:
            if is_subset(subset, order):
                if subset in subset_frequency:
                    subset_frequency[subset] = subset_frequency[subset] + 1
                else:
                    subset_frequency[subset] = 1

    return subset_frequency

# Determine the frequency of a tuple in a list of tuples
def group_frequency(group, data):
    count = 0
    for order in data:
        if is_subset(group, order):
            count = count + 1
    return count

# Determine the confidence of an group of items being responsible for the purchase of another
# Confidence defined as support{x,y}/support{x}
def calculate_confidence(support_map, data):
    for group in support_map:
        # should get confidence of each item in the set not just the first
        for item in group:
            numerator = group_frequency(group, data)
            denominator = group_frequency([item], data)
            confidence = float(numerator) / float(denominator)
            without_item = list(group)
            without_item.remove(item) # Remove current item from output
            print '{} => {} : {:.2f}%'.format(without_item, item, confidence * 100)
            # push confidence to map

    return True

def apriori(data, support=.5, confidence=.5):
    items = filter_items(data)
    total_transactions = num_transactions(data)
    most_items = biggest_order(data)

    counter = 2 #Start by comparing pairs of items
    while counter <= most_items: 
        item_combination = get_combinations(items, counter)
        subset_freq = multiple_item_frequency(data, item_combination)
            
        filtered_support = filter_by_support(subset_freq, support, total_transactions)
        confidence_map = calculate_confidence(filtered_support, data)
        counter = counter + 1
    
    return confidence_map