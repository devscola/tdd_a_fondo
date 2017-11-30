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

    id = SecureRandom.hex
    tip_descriptor = {
      "id" => id,
      "name" =>  question['name'],
      "address" =>  question['address'],
      "message" =>  question['message'],
      "advisor" =>  question['advisor']
    }

    Repository.store(tip_descriptor)

    reply(tip_descriptor)
  end

  private

  def reply(message)
    status :ok
    content_type :json
    body(message.to_json)
  end
end
