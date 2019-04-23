require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin_text = PigLatinizer.new
    @string = @pig_latin_text.piglatinize(params[:user_phrase])
    erb :pig_latin
  end

end
