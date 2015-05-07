def echo(str)
	return str
end
def shout(str)
	return str.upcase
end
def repeat(str,n=2)
	output=str
	for i in 1..n-1
		output += " " + str
	end
	return output
end
def start_of_word(str,n=1)
	return str[0..n]
end
def first_word(str)
	n=str.index(" ")
	if n==nil
		return str
	else
		return str[0..n]
	end
end
def titleize(str)
	little_words=["the","and","or","over","under","is","a"]
	str=str.downcase
	a=str.split(" ")
	a.each_index do |i|
		word = a[i]
		if !(little_words.include?(word))
			a[i]=word[0].upcase+word[1..-1]
		end
	end
end
