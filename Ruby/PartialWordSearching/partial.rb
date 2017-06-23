#!/usr/bin/ruby
# https://www.codewars.com/kata/partial-word-searching

def findWord(query, array_of_strings)
	endarray = array_of_strings.select do |elem|
		elem.downcase.include? query.downcase
	end
	
	return endarray.empty? ? ['Empty'] : endarray
end