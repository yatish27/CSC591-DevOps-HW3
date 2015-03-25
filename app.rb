require 'bundler'
Bundler.require

STDOUT.sync = true
set :server, %w[thin]
set :public_folder, Proc.new { File.join(root, "public") }
class App < Sinatra::Base
  # some utility functions in needed
  register Sinatra::Cache
  # API
  get '/' do
    @greet = settings.cache.fetch('greet') { 'Hello, World!' }
    erb :index
  end
end
