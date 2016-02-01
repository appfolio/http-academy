require 'sinatra'
require 'haml'
require 'active_record'
require 'sinatra/activerecord'
require './models/models.rb'
require './handlers/http_authentication.rb'

class HTTPApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  use Handlers::HttpAuthentication

  get '/' do
    haml :index
  end

  get '/squirrels' do
    if params['name'] == 'Leo'
      haml :leo
    else
      haml :squirrels
    end
  end

end

