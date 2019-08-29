require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  # GET '/'
  #   returns a 200 status code
  #   renders the instructions
  #   renders a new form element on the page
  #   renders the form directions on the page
  #   renders the input field for the phrase

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pg = PigLatinizer.new
  #   returns a 200 status code
  #   displays the pig latinized phrase upon form submission
    # @user_input = params[:user_phrase]
    @piglatinized = @pg.piglatinize(params[:user_phrase])
    # binding.pry
    erb :user_input
  end

end
