require 'rack/test'
require_relative '../infrastructure/dispatcher'
require 'json'

module Helpers
  def self.included(base)
    base.send(:include, Rack::Test::Methods)
  end

  def app
    Infrastructure::Dispatcher
  end

  def last_parsed_response
    JSON.parse(last_response.body)
  end
end


class TestRepository < Repository
  def self.flush
    @@data = []
  end

  def self.exists?(id)
    stored = @@data.find do |entry|
      entry['id'] == id
    end

    !stored.nil?
  end
end
