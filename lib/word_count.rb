class Word_Count

	def initialize key_word
		@key_word = key_word.downcase
	end

	def how_many word_list
		words = word_list.split(/[.|,|\s]/)
		result = 0
		words.each do |word|
			if word.downcase == @key_word
				result += 1
			end
		end
		result
	end
end