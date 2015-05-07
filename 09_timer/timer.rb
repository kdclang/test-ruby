class Timer
	def initialize
		@seconds=0
	end

	def seconds
		@seconds
	end


	def seconds=(new_sec)
		@seconds=new_sec
	end

	def time_string
		hours=@seconds/360
		time_left=@seconds%360
		minutes=time_left/60
		time_left=time_left%60
		str=pad_string(hours.to_s)+":"+pad_string(minutes.to_s)+":"+pad_string(time_left.to_s)
		return str
	end

	def pad_string(str)
		if str.length<2
			return "0"+str
		else
			return str
		end
	end

end

t=Timer.new
t.seconds=500
puts t.time_string
