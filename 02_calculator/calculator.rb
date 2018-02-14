#write your code here
def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def sum (array)
  total = 0
  array.each {|number| total += number}
  total
end

def multiply (array)
  total = 1
  array.each {|number| total *= number}
  total
end

def power (a, b)
  a ** b
end

def factorial (number)
  if (number == 0)
    1
  else
    number * factorial(number-1)
  end 
end
