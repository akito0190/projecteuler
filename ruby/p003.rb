#!/usr/local/bin/ruby
require 'complex'

def max_prime_factor
  num = reminder = 600851475143
  prime_factor = []
  i = 2

  while 1 do
    if !is_prime(i)
      i += 1
      next
    end

    if reminder % i == 0
      prime_factor.push i
      return i if prime_factor.inject(:*) == num
      reminder = reminder / i
      next
    else
      i += 1
    end
  end
end

def is_prime(x)
  return true if x == 2
  return false if x < 2 || x % 2 == 0
  i = 3
  while i <= Math.sqrt(x) do
    return false if x % i == 0
    i += 2
  end
  return true
end

def main()
  p max_prime_factor()
end

main()
