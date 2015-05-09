#!/usr/bin/env ruby


def square_area (a)
    area = a**2
end



def factorial(n)
  f = 1
  for n in 1..n do
    f *= n 
    n -= 1
  end
  return f
end




def power(a,n)
  p=1
  (n-1).times do 
    p *= a
  end
  return p 
end

def recursive_factorial(g) 
  
  if g > 1 then return g * recursive_factorial(g-1)
    else return 1
  end
end

def fibonacci(h)
  array = []
  if h == 0 then return 1
  elsif h == 1 then return 1
  else return fibonacci(h-2) + fibonacci(h-1)
  end
end





=begin puts "podaj liczbe kwadratów"
x = gets.chomp.to_i
puts "podaj liczbe do silni"
b = gets.chomp.to_i
puts "podaj podstawe potegi"
d = gets.chomp.to_i
puts "podaj wykladnik potegi"
e = gets.chomp.to_i
puts factorial(b)
puts power(d, e)
(1..x).each {|i| puts square_area(i)}
=end 
y = gets.chomp.to_i
puts recursive_factorial(6)
puts fibonacci(y)

