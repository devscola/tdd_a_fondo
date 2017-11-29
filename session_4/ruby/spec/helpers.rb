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
end
