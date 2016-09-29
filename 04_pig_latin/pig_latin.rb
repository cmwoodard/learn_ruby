#write your code here
def translate(words)
	input = words.split(" ")
	
	input.each_index{|x|
		if input[x].start_with?('a','e','i','o','u')
			input[x] = input[x] + 'ay'
		
		elsif input[x].include?('qu')
			#slice takes out everything UP TO and INCLUDING 'QU' and returns all of that, adds that to thend of the rest of it + the 'ay'
			input[x] = input[x] +input[x].slice!(input[x][0..input[x].index('u')]) +'ay'
			
		elsif input[x][1..input[x].length].start_with?('a','e','i','o','u')
			input[x] = input[x][1..input[x].length] + input[x][0] + 'ay'
			
		elsif input[x][2..input[x].length].start_with?('a','e','i','o','u')
			input[x] = input[x][2..input[x].length] + input[x][0] + input[x][1] + 'ay'
			
		else
			input[x] = input[x][3..input[x].length] + input[x][0] + input[x][1] + input[x][2] +'ay'
		end	
	}
	input.join(" ")
	#puts input
end

#translate('quail query square blog bananas')