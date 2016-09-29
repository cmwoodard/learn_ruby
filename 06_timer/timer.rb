class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
	@seconds=0
  end
  
  def seconds
	@seconds
  end
  
  def time_string
	#create time string to manipulate
	@time_string = "00:00:00"
	#split into 3 sections to mess with
	@time_string = @time_string.split(":")	
	
	if @seconds < 10
		@time_string[2]= '0' +@seconds.to_s
	elsif @seconds < 60
		@time_string[2]=@seconds
	elsif @seconds < 3600 
		#minutes gives you how many times 60 will go into it(ie. minutes obviously) and seconds is the remainder of that
		minutes = @seconds/60
		seconds = @seconds%60
		
		#appends 0 to front if single digit for minutes and seconds
		if seconds < 10
			@time_string[2]= '0' + seconds.to_s
		else
			@time_string[2]=seconds.to_s
		end
		
		if minutes < 10
			@time_string[1]= '0' + minutes.to_s
		else
			@time_string[1]=minutes.to_s
		end		
	else
		#minutes gives you how many times 60 will go into it(ie. minutes obviously) and seconds is the remainder of that
		minutes = @seconds/60
		seconds = @seconds%60
		hours = minutes/60
		minutes = minutes%60
		#appends 0 to front if single digit for minutes and seconds
		if seconds < 10
			@time_string[2]= '0' + seconds.to_s
		else
			@time_string[2]=seconds.to_s
		end
		
		if minutes < 10
			@time_string[1]= '0' + minutes.to_s
		else
			@time_string[1]=minutes.to_s
		end		
		
		if hours < 10
			@time_string[0]= '0' + hours.to_s
		else
			@time_string[0]=hours.to_s
		end	
		
	end
	@time_string=@time_string.join(":")
	@time_string
  end
end

myTimer=Timer.new
myTimer.seconds()
myTimer.time_string