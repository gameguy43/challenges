
# returns whether or not a word can be typed with only your left hand
# completed January 4 2014

def left_handed?(word)
	left_letters = ['q', 'w', 'e', 'r', 't', 'a', 's', 'd', 'f', 'g', 'z', 'x', 'c', 'v', 'b']
	word = word.split('')
	for l in word
		return false if left_letters.include?(l) == false
	end
	return true
end