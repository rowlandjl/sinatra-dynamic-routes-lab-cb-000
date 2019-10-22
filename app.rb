require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    params[:name].reverse 
  end 
  
  get '/square/:number' do 
    "#{params[:number].to_i ** 2}"
  end 
  
  get '/say/:number/:phrase' do 
    @repeated_phrase = params[:number].to_i * params[:phrase]
    "#{@repeated_phrase}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  end 
  
  get '/:operation/:number1/:number2' do 
  end 

end