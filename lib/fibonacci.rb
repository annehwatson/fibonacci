# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  return 0 if n == 0

  if n == nil
    raise ArgumentError.new("Nil object is not an integer")
  end

  if n < 0
    raise ArgumentError.new("Negative input")
  end

  return 1 if n == 1

  k = 0
  j = 1
  i = 2
  result = 0

  while i <= n
    result = k + j
    k = j
    j = result
    i += 1
  end
  return j

end
