students = [ [ "john", 28, 'CDMX' ], [ "mary", 25, 'BSAS' ], [ "paul", 21, 'Santiago' ] ]

# TODO: Convert the array of arrays into an array of hashes.

array_of_hashes = students.map do |student|
  name = student[0]
  age = student[1]
  { name => age }
end

p students
p array_of_hashes
