def combine_anagrams(words)
	# YOUR CODE HERE
	words.group_by {|w|
		w.downcase.split(//).sort.to_s
	}.values
end

input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
puts combine_anagrams(input)
# output = [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]
