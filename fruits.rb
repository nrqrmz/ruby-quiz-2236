# fruits = ["banana", "peach", "watermelon", "orange"]
fruits = %w[orange peach watermelon orange dragon\ fruit]

# CRUD METHODS

# READ
# Print out "peach" from the fruits array in the terminal
# p fruits[1]

# CREATE
# Add an "apple" to the fruits array
fruits << 'apple'
# fruits.push('apple')
# p fruits

# UPDATE
# Replace "watermelon" by "pear"
fruits[2] = 'pear'
# p fruits

# DELETE
# Delete "orange"
# fruits.delete('orange') # delete all item occurrences
# fruits.delete_at(-3) # delete item with index
fruits.pop() # delete the last array item
p fruits
