require 'sinatra/base' 


class HelloWorld < Sinatra::Base
  get '/' do
    erb :layout
  end
end
