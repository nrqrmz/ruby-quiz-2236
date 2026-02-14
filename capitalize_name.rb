def capitalize_name(first_name, last_name)
  # first_name.capitalize + ' ' + last_name.capitalize # concatenation
  "#{first_name.capitalize} #{last_name.capitalize}" # interpolation
end

puts capitalize_name('enRIQue', 'RamIReZ')
