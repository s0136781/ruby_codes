def last_digit(x,q=10)
  x % q
end

def digits_sum(x,q=10)
  res = 0
  while x > 0
    res += last_digit(x,q).to_i
    x /= q
  end
  res
end

puts digits_sum(14.4+5)
