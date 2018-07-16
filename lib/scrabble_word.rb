require 'pry'

class ScrabbleWord
	attr_accessor :word, :hash_alphabet

	def initialize(word)
		@word = word
	end
	
	def get_word
    	return @word.downcase
  	end

  	def score
  		@hash_alphabet = {"a"=> 1, "b"=> 3, "c"=> 3, "d"=> 2, "e"=> 1, "f"=> 4,
  							"g"=> 2, "h"=> 4, "i"=> 1, "j"=> 8, "k"=> 5, "l"=> 1,
  							"m"=> 3, "n"=> 1, "o"=> 1, "p"=> 3, "q"=> 10, "r"=> 1,
  							"s"=> 1, "t"=> 1, "u"=> 1, "v"=> 4, "w"=> 4, "x"=> 8, "y"=> 4, "z"=> 10
						}
		
		somme = 0
  		hash_alphabet.each do |key, value|
  			@word.each_char do |c|
  				if c.downcase == key
  					somme += value
  				end
  			end
  		end
  		return somme
  	end

  	def multiplier_score(multiplier)
		# somme = 0
  # 		@hash_alphabet.each do |key, value|
  # 			@word.each_char do |c|
  # 				if c.downcase == key
  # 					somme += (value * multiplier)
  # 				end
  # 			end
  # 		end
  		return score * multiplier
  	end
end

binding.pry

puts "end of file"