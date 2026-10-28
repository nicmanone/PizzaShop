#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
end

before do
  @products = Product.order "created_at DESC"
end

get '/' do
	erb :index 
end

get '/about' do
	erb :about 
end

get '/pizza/:id' do
  @pizza = Product.find params[:id]
  erb :pizza
end
