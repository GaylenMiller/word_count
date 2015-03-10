require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')

get('/') do
	"Hello World from Sinatra"
end

get('/form') do
	if params.has_key?('key_word')
		@key_word = params.fetch('key_word')
	  	word_count = WordCount.new(@key_word)
  		@how_many = word_count.how_many( params.fetch('block_text'))
  	else
  		@how_many = 0
  	end

	erb(:form)	
end

