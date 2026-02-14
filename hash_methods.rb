city = { name: "Paris", population: 2_000_000 }

# CRUD
# READ
# Print out the name of the city
puts city[:name]

# CREATE
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] ='Eiffel Tower'
p city

# UPDATE
# Update the population to 2000001
city[:population] += 1
p city

# DELETE
city.delete(:population)
p city

# What will the following code return?
p city[:mayor]
