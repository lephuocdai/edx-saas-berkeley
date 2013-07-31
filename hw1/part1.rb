#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.




def palindrome?(str)
	tempStr = str.gsub(/\W/,'').downcase
	return tempStr == tempStr.reverse
end

def count_words(str)
	wordList = Hash.new(0)
	str.downcase.gsub(/\W+/, ' ').split.each { |v| 
		wordList[v] += 1  
	}
 	wordList
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"
# test_str = "aba"
if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Madam, I'm Adam"
# test_str = "abcbab"
# puts test_str.gsub(/\W/,'').downcase.reverse, test_str.gsub(/\W/,'').downcase

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count
