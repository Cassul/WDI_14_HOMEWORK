require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'uri' #to encode to uri
require 'active_record'
require_relative 'db_config'
require_relative 'models/movierecord'
require 'pry'


get '/' do
  erb :search
end


class OMDB
  def query (query_type, search_for)
    enc_uri = URI.escape("http://www.omdbapi.com/?#{query_type}=#{search_for}&apikey=2f6435d9") #encode to URL
    result = HTTParty.get(enc_uri)
    return result.parsed_response
  end
end
omdb = OMDB.new

get '/search' do
  hash = omdb.query('s', params[:title])
  @titles = []
  hash["Search"].each do |title| 
    @titles.push(title["Title"])
  end
  if @titles.length > 1
    erb :search_result
  else 
    hash = omdb.query('t', params[:title])
    @title = hash["Title"]
    @plot = hash["Plot"]
    @rate = hash["Rate"]
    @year = hash["Year"]
    @image_src = hash["Poster"]
    erb :result
  end
end


get '/search_history' do
  @movies = Movierecord.all 
  erb :search_history
end

get '/search_history/:id' do
  @movie = Movierecord.find_by(title: params[:id])
  erb :movie_from_db
end

get '/movie' do
  hash = omdb.query('t', params[:title])
  movie_record = Movierecord.new
  movie_record.title = hash["Title"]
  movie_record.description = hash["Plot"]
  movie_record.rate = hash["Rate"]
  movie_record.year = hash["Year"]
  movie_record.image_url = hash["Poster"]
  movie_record.save
  @title = hash["Title"]
  @plot = hash["Plot"]
  @rate = hash["Rate"]
  @year = hash["Year"]
  @image_src = hash["Poster"]
  erb :result
end



#http://www.omdbapi.com/?type=series&s=rose&apikey=2f6435d9 - think about it