require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @text_input = PigLatinizer.new(params[:string])
    @translation = @text_input.piglatinize
    
    erb :translation
  end
end