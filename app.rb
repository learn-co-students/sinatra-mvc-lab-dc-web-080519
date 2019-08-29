require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinized' do
    @phrase = params[:phrase]
    erb :piglatinized
  end
end
