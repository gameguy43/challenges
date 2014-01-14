# returns the factorial of a number if it is prime
# completed January 4 2014

def is_prime?(n)
	for i in (2..n-1)
		return false if n % i == 0
	end
	return true
end

def factorial(num)
	return "Not prime" unless is_prime?(num)
	for k in (2..num-1)
		num = num * k
	end
	return num
end