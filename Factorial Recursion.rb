def factorial(n) 
    (1..n).inject{ |result, n| result = result*n }  
end

def fac(n)
  n == 0 ? 1 : n * fac(n-1)    
end



