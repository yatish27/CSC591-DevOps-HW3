require 'bundler'
Bundler.require

STDOUT.sync = true

class App < Sinatra::Base
  # some utility functions in needed

  # API
  get '/' do
    slim :index
  end
end
