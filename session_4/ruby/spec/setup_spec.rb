require_relative 'helpers'

describe 'API' do
  include Helpers

  it 'is reacheable' do
    get '/'

    expect(last_response.status).to eq(200)
  end
end
