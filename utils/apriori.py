import itertools

def num_transactions(data):
    return len(data)

def frequency_table(data):
    frequency_map = {}
    for order in data:
        for item in order:
            if item in frequency_map:
                frequency_map[item] = frequency_map[item] + 1
            else:
                frequency_map[item] = 1
    return frequency_map

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

def make_pairs(data):
    items = filter_items(data)
    pairs = []
    for current in xrange(len(items) - 1):
        for compare in xrange(len(items) - 1):
            if items[current] == items[compare]:
                pass
            elif items[current] < items[compare]:
                pair = (items[current], items[compare])
                pairs.append(pair)
            else:
                pass
    return pairs

def biggest_order(data):
    max_length = -1
    for order in data:
        if len(order) > max_length:
            max_length = len(order)
    return max_length

def is_subset(list1, list2):
   set1 = set(list1)
   set2 = set(list2)
   return set1.issubset(list2)

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

def apriori(data, support=.5, confidence=.5):
    items = filter_items(data)
    total_transactions = num_transactions(data)
    frequecy = frequency_table(data)
    filtered_support = filter_by_support(frequecy, support, total_transactions)
    common_pairs = get_combinations(items, 2)
    all_combinations = get_combinations(items, len(items) - 1)
    most_items = biggest_order(data)

    counter = 2
    candidate_set = []
    while counter <= 2: #most_items: 
        item_combination = get_combinations(items, counter)
        for item in item_combination:
            #frequency for item_combinations
            subset_freq = multiple_item_frequency(data, item_combination)

        counter = counter + 1
        print subset_freq
    
    return data