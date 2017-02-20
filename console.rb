require_relative('./models/rock_paper_scissor.rb')
require 'pry'
require 'sinatra'
require 'sinatra/contrib/all'
require 'json'


get '/rps' do
  game1 = Rps.new
  result = game1.run
  if result == 1
    @output = "Hand1 is the winner with rock"
  elsif result == 2
    @output = "Hand2 is the winner with paper"
  elsif result == 3
    @output = "Hand2 is the winner with rock"
  elsif result == 4
    @output = "Hand1 is the winner with scissors"
  elsif result == 5
    @output = "Hand1 is the winner with paper"
  elsif result == 6
    @output = "Hand2 is the winner with scissors"
  else
    @output = "It was a draw"
  end
  erb( :layout )
end

get '/' do 
  erb (:rps)
end

get '/layout' do
  erb (:layout)
end