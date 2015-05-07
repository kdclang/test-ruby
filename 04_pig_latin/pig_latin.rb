def translate_word(str)
	vowels=["a","e","i","o","u"]
	phon = ["th","ch","qu"]
	if vowels.include?(str[0])
		return str+"ay"
	elsif vowels.include?(str[1]) && !(phon.include?(str[0..1]))
			return str[1..-1]+str[0]+"ay"
	elsif vowels.include?(str[2])
	    return str[2..-1]+str[0..1]+"ay"
	else
			return str[3..-1]+str[0..2]+"ay"
	end
end

def translate(str)

	words=str.split(" ")
	words.map! { |str| translate_word(str) }
	return words.join(" ")
end



puts translate("banana")
puts translate("eat pie")
puts translate("three")
puts translate("quiet")
puts translate("school")
puts translate("cherry")

