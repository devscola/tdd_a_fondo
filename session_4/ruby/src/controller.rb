require 'sinatra/base'
require 'json'
require_relative 'repository'

class Controller < Sinatra::Base
  disable :show_exceptions

  get '/tips' do
    tips = Repository.all

    reply(tips)
  end

  post '/tips' do
    question = JSON.parse(request.body.read)

    tip_descriptor = {
      "name" =>  question['name'],
      "address" =>  question['address'],
      "message" =>  question['message'],
      "advisor" =>  question['advisor']
    }
    stored_tip = Repository.store(tip_descriptor)

    reply(stored_tip)
  end

  delete '/tips/:id' do
    Repository.delete(params['id'])
    reply({})
  end

  private

  def reply(message)
    status :ok
    content_type :json
    body(message.to_json)
  end
end
