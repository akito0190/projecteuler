#!/usr/local/bin/ruby

def get_palindrome_product
  palindrome_product = []
  i = 999
  while i >= (999 / 2).floor
    n = 999
    while n >= 100
      product = (i * n).to_s.split("")
      palindrome_product.push product.join("").to_i if product == product.reverse
      n -= 1
    end
    i -= 1
  end

  return palindrome_product.sort{|a,b| b <=>a }.first
end

p get_palindrome_product()
