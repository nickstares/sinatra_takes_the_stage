require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
	use BetterErrors::Middleware
	BetterErrors.application_root = __dir__

end

# get 'add/:num1/:num2' do

# 	 print "this is number 1 #{params[pn:num1]}"
# 	print "this is number 2 #{num2}"
# 	print "this is the sum #{x}"
# 	end

get '/add/:num1/:num2' do 
	x = params[:num1].to_i + params[:num2].to_i
	"this is the sum: #{x}"

end

get '/subtract/:num1/:num2' do 
	x = params[:num1].to_i - params[:num2].to_i
	"this is the difference: #{x}"

end

get '/multiply/:num1/:num2' do 
	x = params[:num1].to_i * params[:num2].to_i
	"this is the product: #{x}"

end

get '/divide/:num1/:num2' do 
	x = params[:num1].to_i / params[:num2].to_i
	"this is the quotient: #{x}"

end