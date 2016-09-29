#write your code here
def echo(word)
 word
end

def shout(word)
	word.upcase
end

def repeat(word, num_times = 2)
	("#{word} " * num_times).strip	
end

def start_of_word(word, num=1)
	word[0..num-1]
end

def first_word(word)
	word.split(" ")[0]
end

def titleize(phrase)
	array = phrase.split(" ")
		
	array.each{|x| 
		if x!="and" && x!="over" && x!="the"
			x[0]=x[0].upcase end}
	array[0][0]=array[0][0].upcase
	array.join(" ")
end

