# apriori-python
Implementation of Apriori Algorithm

### To Run:
```python index.py```

### To Run and Repopulate database
```./setup.sh && python index.py```

### Example Output
```
Database: Wawa
	 All Orders
		 ['Bagel', 'Coffee', 'Cream Cheese']
		 ['Bagel', 'Coffee', 'Cream Cheese']
		 ['Bagel', 'Coffee', 'Cream Cheese']
		 ['Bagel', 'Coffee', 'Cream Cheese']
		 ['Bagel', 'Coffee', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cream Cheese', 'Cigarrettes', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cream Cheese', 'Cigarrettes', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cream Cheese', 'Cigarrettes', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cream Cheese', 'Cigarrettes', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cream Cheese', 'Cigarrettes', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cigarrettes', 'Gum']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cigarrettes']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cigarrettes']
		 ['Bagel', 'Coffee', 'Cream Cheese', 'Cigarrettes']
		 ['Bagel', 'Coffee', 'Cream Cheese']
		 ['Bagel', 'Coffee', 'Cream Cheese']
		 ['Coffee']
		 ['Coffee']
		 ['Coffee']
		 ['Coffee']
	 Frequency Table: items with support greater than 50.00% support
		 ('Bagel', 'Cream Cheese') : 15
		 ('Cream Cheese', 'Coffee') : 15
		 ('Bagel', 'Coffee') : 16
		 ('Bagel', 'Cream Cheese', 'Coffee') : 15
	 Associate Rules: rules with confidence greater than or equal to 50.00%
		 ['Cream Cheese'] => Bagel : 93.75%
		 ['Bagel'] => Cream Cheese : 100.00%
		 ['Coffee'] => Cream Cheese : 100.00%
		 ['Cream Cheese'] => Coffee : 75.00%
		 ['Coffee'] => Bagel : 100.00%
		 ['Bagel'] => Coffee : 80.00%
		 ['Cream Cheese', 'Coffee'] => Bagel : 93.75%
		 ['Bagel', 'Coffee'] => Cream Cheese : 100.00%
		 ['Bagel', 'Cream Cheese'] => Coffee : 75.00%
```