grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`

accumulator = 0

grades.each do |grade|
  accumulator += grade
end

# result = accumulator.fdiv(grades.size)
result = accumulator.to_f / grades.size

p result
