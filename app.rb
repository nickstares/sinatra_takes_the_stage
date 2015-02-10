# app.rb

require 'sinatra'
require 'sinatra/reloader'

require './greeter'

also_reload './greeter.rb'

# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
@greeter.quote params[:tag].to_sym
 

end

get '/photo' do
	x = 1 + rand(3)
	send_file "./public/#{x}.jpg"
end