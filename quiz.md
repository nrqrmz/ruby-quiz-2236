# Quiz - Ruby Basics

---

### 1. What's a variable? What's the point of using variables? Give an example.

<details>
<summary>Show solution</summary>

A variable is a name which stores data.
The point of using variables is to be able to reuse and manipulate data.

```ruby
first_name = 'Sebastien'
```

</details>

---

### 2. Precisely describe the following line of code **using the correct vocabulary**.

```ruby
age = 18
```

<details>
<summary>Show solution</summary>

We assign the value `18` to the `age` variable.

</details>

---

### 3. What's a method? What's the point of defining methods?

<details>
<summary>Show solution</summary>

A method is a name which refers to a sequence of program instructions in memory to store code.
The point of using methods is to be able to reuse and manipulate code.

</details>

---

### 4. Precisely describe what happens at **each line** using good vocabulary. Write a ruby comment next to the line you're explaining using the `#`.

```ruby
def multiply(x, y) # TODO: Describe this line here
  return x * y     # TODO: Describe this line here
end                # [..]

puts multiply(5, 8) #[..]
```

<details>
<summary>Show solution</summary>

```ruby
def multiply(x, y) # We define the `multiply` method which takes two `x` and `y` parameters.
  return x * y     # We compute the product of `x` times `y` and return it as the result of the method `multiply`.
end                # This line marks the end of the `multiply` method definition.

puts multiply(5, 8) # We execute/call the method multiply with the arguments 5 and 8 and print the result.
```

</details>

---

### 5. What's the keyword `if`? Give us an example of `if` statements, using an `age` variable storing a student's age for instance.

```ruby
# TODO: write some code with `if`
age =
```

<details>
<summary>Show solution</summary>

```ruby
age = 42
if age >= 21 # if evaluates a condition
  puts "You can vote"
else
   puts "You can't vote"
end
```

</details>

---

### 6. Complete the following code to compute the **exact** average of students grades (using `each`).

```ruby
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
```

<details>
<summary>Show solution</summary>

```ruby
grades = [19, 8, 11, 15, 13]
sum = 0

grades.each do |grade|
  sum += grade
end

average = sum.fdiv(grades.length)
```

</details>

---

### 7. Define a `capitalize_name` method which takes `first_name` and `last_name` as parameters and returns the well-formatted fullname (with capitalized first and last names).

<details>
<summary>Show solution</summary>

```ruby
def capitalize_name(first_name, last_name)
  return "#{first_name.capitalize} #{last_name.capitalize}"
end
```

</details>

---

### 8. What's the difference between **concatenation** and **interpolation**? Give an example.

<details>
<summary>Show solution</summary>

**Concatenation** is the operation of creating a new string by sticking two strings together. Example:

```ruby
full_name = "Sebastien" + " " + "Saunier"
```

**Interpolation** is the operation of creating a string by executing code inside this string. Example:

```ruby
full_name = "#{'sebastien'.capitalize} #{'saunier'.capitalize}"
```

</details>

---

### 9. Translate each line of pseudo-code into ruby (Arrays).

```ruby
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal

# Add an "apple" to the fruits array

# Replace "watermelon" by "pear"

# Delete "orange"
```

<details>
<summary>Show solution</summary>

```ruby
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = 'pear'

# Delete "orange" (three different methods)
fruits.delete_at(-1)
fruits.delete('orange')
fruits.pop
```

</details>

---

### 10. Translate each line of pseudo-code into ruby (Hashes).

```ruby
city = { name: "Paris", population: 2000000 }

# Print out the name of the city

# Add the Eiffel Tower to city with the `:monument` key

# Update the population to 2000001

# What will the following code return?
city[:mayor]
```

<details>
<summary>Show solution</summary>

```ruby
city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = 'Eiffel Tower'

# Update the population to 2000001
city[:population] = 2_000_001

# What will the following code return?
city[:mayor] #=> nil
```

</details>

---

### 11. Use the `map` iterator to convert the variable `students`, an array of arrays, into an array of hashes. Those hashes should have two keys: `:name` and `:age`. What is the type of those keys?

```ruby
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# TODO: Convert the array of arrays into an array of hashes.
```

<details>
<summary>Show solution</summary>

```ruby
new_students = students.map do |student|
  { name: student[0], age: student[1] }
end

p new_students
#=> [{ name: 'john', age: 28 }, { name: 'mary', age: 25 }, { name: 'paul', age: 21 }]
```

The keys `:name` and `:age` are **Symbols**.

</details>
