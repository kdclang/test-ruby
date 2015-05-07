def add(a,b)
	return a+b
end
def subtract(a,b)
	return a-b
end
def sum(nums)
	total=0
	if nums.length==0
		return 0
	else
		for i in nums
			total+=i.to_i
		end
		return total
	end
end
def multiply(*nums)
	total = 1
	for i in nums
		total *= i
	end
	return total
end

def power(a,b)
	if b==0
		return 1
	else
		total=1
		for i in 1..b
			total = total*b
		end
	end
end
def factorial(n)
	if n==0 
		return 1
	else
		total = 1
		for i in 1..n
			total = total*i
		end
	end
end




