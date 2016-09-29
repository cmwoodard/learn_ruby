#write your code here
def add(first,second)
	first + second
end

def subtract(first,second)
	first - second
end

def sum(sum_array)
	total = 0
	
	while sum_array[0] != nil
		total+= sum_array.pop
	end
	
	return total
end

def multiply(first,second)
	first*second
end

def power(first,second)
	first**second
end

def factorial(number)
	total = number
	if number==0 || number == 1
		return 1
	else
		while number>1
			number=number-1
			total*=number
			
		end		
		return total
	end

end