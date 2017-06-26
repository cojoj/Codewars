# https://www.codewars.com/kata/highest-and-lowest

def high_and_low(numbers)
  number_array = numbers.split(/\s/).map(&:to_i)
  "#{number_array.max} #{number_array.min}"
end

p high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")