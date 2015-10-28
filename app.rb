require 'sinatra'
require 'redis'

get '/' do
  "Reverb rocks!"
end

get '/health' do
  begin
  redis = Redis.new(:host => "127.0.0.1", :port => 6379, :db => 0)
  redis.get("info")
  rescue Redis::CannotConnectError
    [500, "Connection to redis is broken!"]
  else
    [200, "OK, ready to rock!"]
  end
end

post '/post' do
  # your solution here
end
