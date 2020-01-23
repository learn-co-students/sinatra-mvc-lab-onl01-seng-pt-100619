require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/' do
    # text_from_user = params[:user_text]
    
    # @analyzed_text = TextAnalyzer.new(text_from_user)


#shortened version of lines 10 and 12
@analyzed_text = TextAnalyzer.new(params[:user_text])


    erb :results
  end
  
  
end