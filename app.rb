require_relative 'config/environment'

class App < Sinatra::Base

       post '/piglatinize' do
        @input = params[:user_phrase]
        @string = PigLatinizer.new
        
        @translated = @string.piglatinize(@input)
        # binding.pry
        
        erb :'/piglatinize' 
       end

       get '/piglatinize' do
        erb :'/piglatinize'
       end

       get '/' do
        erb :'user_input'
       end
end