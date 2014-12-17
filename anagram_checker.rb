def anagram_checker(word_one, word_two)

	sorted_array_from_word_one = word_one.downcase.split("").sort
	sorted_array_from_word_two = word_one.downcase.split("").sort

	if sorted_array_from_word_one == sorted_array_from_word_two
		"Anagrams confirmed"
	else
		"Sorry, no anagrams here, dog"
	end
end

