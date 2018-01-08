    
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'uri' #to encode to uri

get '/' do
  erb :search
end

get '/search' do
  url = params['title']
  enc_uri = URI.escape("http://www.omdbapi.com/?t=#{url}&apikey=2f6435d9") #encode to URL
  result = HTTParty.get(enc_uri)
  hash = result.parsed_response
  @title = hash["Title"]
  @plot = hash["Plot"]
  @rate = hash["Rate"]
  @year = hash["Year"]
  @image_src = hash["Poster"]
  erb :result
end

