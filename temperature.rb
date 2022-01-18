def to_fahrenheit(celsius)
  step1 = celsius * 1.8
  step2 = step1 + 32
  step2
end

puts to_fahrenheit(10) # 50
puts to_fahrenheit(20) # 68
puts to_fahrenheit(30) # 86
