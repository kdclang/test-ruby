class Book
	@@title=""
	def initialize(title="")
		@@title=capitalize(title)
	end
	attr_reader :title
	def capitalize(title)
		little_words=["the","an","or","a", "in","of","under","below","over","above"]
		arr=title.split(" ")
		if arr.length>0
			arr[0]=arr[0]
		end

		index=0
		for word in arr
			if index==0
				word=word[0].upcase+word[1..-1]
			elsif !(little_words.include?(word))
				word=word[0].upcase+word[1..-1]
			end
			arr[index]=word
			index+=1
		end
		return arr.join(" ")

	end
	def title
		return @@title
	end
	def title=(new_title)
		@@title=new_title
	end

end

mybook=Book.new("inferno")
puts mybook.title