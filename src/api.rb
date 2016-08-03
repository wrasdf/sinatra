require "sinatra"
require "sinatra/reloader"
require "json"

set :port, 9000
set :bind, '0.0.0.0'

register Sinatra::Reloader
enable :reloader

get '/' do
  "#{['Hello', 'Hi', 'Hey', 'Cool', 'Io', 'Node'][rand(4)]} World"
end

get '/api/todos' do
  response = [{"text" => "a1", "complete" => "true"},{"text" => "a2", "complete" => "false"},{"text" => "a3", "complete" => "true"}]
  response.to_json
end

