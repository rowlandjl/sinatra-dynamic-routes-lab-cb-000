require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    params[:name].reverse 
  end 
  
  get '/square/:number' do 
    "#{params[:number].to_i ** 2}"
  end 
  
  get '/say/:number/:phrase' do 
    @phrase_array = []
    
    params[:number].to_i.times do 
      @phrase_array << params[:phrase]
    end 
    
    @phrase_array.join(' ')
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:num2]
  end 

end