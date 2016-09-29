class Book
# write your code here
	attr_accessor :title
	
	def title
		@title[0]=@title[0].upcase
		
		@title = @title.split(" ")
		
		@title.each{|x| 
		if x!="and" && x!="over" && x!="the" && x!="in" && x!="of" && x!="a" && x!="an"
			x[0]=x[0].upcase end}
			
		@title[0][0]=@title[0][0].upcase
		@title.join(" ")
		
		#@title
	end
		
end

