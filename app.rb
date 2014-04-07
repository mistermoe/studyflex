require 'sinatra'
require 'sinatra/activerecord'
require './environments'


class User < ActiveRecord::Base

end


get '/' do
  erb :index
end

post '/test' do
  username = params[:username]
  password = params[:password]
  phone_number = params[:phone_number]

  @user = User.create(username: username, password: password, phone_number: phone_number)

  erb :test

end
