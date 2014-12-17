require './lib/connection.rb'
require './lib/anagram.rb'
require 'active_record'
require 'pry'

user_first_word = ARGV[0]
user_second_word = ARGV[1]

def anagram_checker(word_one, word_two)

	sorted_array_from_word_one = word_one.downcase.split("").sort
	sorted_array_from_word_two = word_one.downcase.split("").sort
	
	if sorted_array_from_word_one == sorted_array_from_word_two
		Anagram.create({word_one: word_one, word_two: word_two, is_anagram: true})
	else
		puts "Sorry dog, no no on the anagrams"
	end
end

anagram_checker(user_first_word, user_second_word)