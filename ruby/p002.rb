#!/usr/local/bin/ruby
sum = 2
num = [1,2]

while( num.last <= 4000000 )
  tmp = num.inject(:+)
  sum += tmp if tmp % 2 == 0
  num.shift
  num.push tmp
end

p sum
