require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'uri' #to encode to uri

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

get '/movie' do
  hash = omdb.query('t', params[:title])
  @title = hash["Title"]
  @plot = hash["Plot"]
  @rate = hash["Rate"]
  @year = hash["Year"]
  @image_src = hash["Poster"]
  erb :result
end