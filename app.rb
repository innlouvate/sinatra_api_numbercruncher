require 'sinatra/base'
require 'sinatra'
require 'json'

class API < Sinatra::Base
  
  get '/:number' do
    content_type :json
    number = params[:number].to_i
    { number: number, factors: number.factors, odd: number.odd?, even: number.even?, prime: number.prime? }.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
