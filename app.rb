require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @text_from_user = params[:user_text]

    erb :user_input
  end

  post '/' do
    @analyzed_text = PigLatinizer.new(params[:user_text])
    erb :piglatinize
  end

end
