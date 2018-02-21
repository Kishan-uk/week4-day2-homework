require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require_relative './models/one_string.rb'
require_relative './models/two_strings.rb'


get '/equal/:string1/:string2' do
  string = TwoFancyStrings.new(params[:string1], params[:string2])
  @result = string.equal()
  erb(:result)
end

get '/palindrome/:string1' do
  string = OneFancyString.new(params[:string1])
  @result = string.palindrome()
  erb(:result)
end

get '/isogram/:string1' do
  string = OneFancyString.new(params[:string1])
  @result = string.isogram()
  erb(:result)
end

get '/anagram/:string1/:string2' do
  string = TwoFancyStrings.new(params[:string1], params[:string2])
  @result = string.anagram()
  erb(:result)
end
