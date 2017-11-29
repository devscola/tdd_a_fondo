require_relative '../src/controller'

module Infrastructure
  Dispatcher = Rack::Builder.app do
    map '/' do
      run Controller
    end

    map '//' do
      run Proc.new { |env| ['200', {'Content-Type' => 'text/plain'}, ['TopTip API']]}
    end
  end
end
