require 'sinatra'
require 'pry'
require 'active_record'
require 'mustache'
require './lib/anagram'
require './lib/connection.rb'

get '/' do 
	stored_anagrams = Anagram.all.to_a
	Mustache.render(File.read('./views/index.html'), stored: stored_anagrams)
end

post '/result' do
	def anagram_checker(word_one, word_two)
	sorted_array_from_word_one = word_one.downcase.split("").sort
	sorted_array_from_word_two = word_two.downcase.split("").sort

		if sorted_array_from_word_one == sorted_array_from_word_two
			Anagram.create({word_one: word_one, word_two: word_two, is_anagram: true})
			Mustache.render(File.read('./views/index.html'), stored: Anagram.all.to_a)
		else
			"sorry, no anagrams dog"
		end
	end

	anagram_checker(params[:word_one], params[:word_two])
end







