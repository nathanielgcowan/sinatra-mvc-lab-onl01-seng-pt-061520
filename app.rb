require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    pl = PigLatinizer.new
    Piglatin = pl.PigLatinizer
    erb :results
  end
end