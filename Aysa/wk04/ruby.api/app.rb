require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
require 'money'
require 'money/bank/open_exchange_rates_bank'
require 'net/http'
require 'json'

url = "http://api.openweathermap.org/data/2.5/forecast?id=7839805&appid=e9a48d665296cfb8c7f4d6f52b2a75ee"
uri = URI(url)
response = Net::HTTP.get(uri)
@text = JSON.parse(response)

oxr = Money::Bank::OpenExchangeRatesBank.new
oxr.cache = 'path/to/file/cache.json'
oxr.app_id = 'e731fce50d094eb5b0c4a1cc6fb9a134'
oxr.update_rates
time = Time.new

# (optional)
# set the seconds after than the current rates are automatically expired
# by default, they never expire, in this example 1 day.
oxr.ttl_in_seconds = 3600
# (optional)
# use https to fetch rates from Open Exchange Rates
# disabled by default to support free-tier users
# see https://openexchangerates.org/documentation#https
oxr.secure_connection = true
# (optional)
# set historical date of the rate
# see https://openexchangerates.org/documentation#historical-data
oxr.date = "#{time.year}-#{time.month}-#{time.day}"
# (optional)
# Set the base currency for all rates. By default, USD is used.
# OpenExchangeRates only allows USD as base currency
# for the free plan users.
oxr.source = 'USD'

# Store in cache
# If you are using unicorn-worker-killer gem or on Heroku like platform,
# you should avoid to put this on the initializer of your Rails application,
# because will increase your OXR API usage.
#oxr.save_rates

Money.default_bank = oxr

usd = Money.default_bank.get_rate('USD', 'AUD')
btc = Money.default_bank.get_rate('BTC', 'USD')


get '/' do
  erb :login
end

get '/password' do 
  file = File.open('test.txt', 'a') #append(create if doesn't exist)
  file.puts(params["password"])
  file.close
  return "thank you"
  #params is a hash and you're accessing name attribute
end

get '/check' do
  file = File.readlines('test.txt')
  @list = file
  erb :test
end
