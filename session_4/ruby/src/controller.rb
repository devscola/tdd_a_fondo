require 'sinatra/base'
require 'json'

class Controller < Sinatra::Base
  disable :show_exceptions

  get '/tips' do
    status :ok
    content_type :json
    body({ key: 'value' }.to_json)
  end
end
