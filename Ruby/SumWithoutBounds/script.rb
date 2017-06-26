# https://www.codewars.com/kata/sum-without-highest-and-lowest-number

def sum_array(arr)
  (arr != nil && arr.count > 2) ? arr.sort[1, arr.count - 2].inject(:+) : 0
end

p sum_array([])
p sum_array([6, 2, 1, 8, 10])
p sum_array([-81, 9, -80, 8, -5, 58, -74, 867, 8, 803, 227, -808, 7, -47, 74, -390, 64, 174, -290, -957, 25, -5, 118, -6, -2, -32])
p sum_array([-6, -20, -1, -10, -12])
p sum_array([-6, 20, -1, 10, -12])