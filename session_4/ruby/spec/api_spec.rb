require_relative 'helpers'

describe 'API' do
  include Helpers

  it 'lists all stored tips' do
    a_tip = TipBuilder.a_tip.with.build
    TestRepository.store(a_tip)
    another_tip = TipBuilder.a_tip.with.build
    TestRepository.store(another_tip)

    get '/tips'

    expect(last_response.status).to eq(200)
    expect(last_parsed_response.size).to eq(2)
  end

  it 'registers a tip' do
    tip = TipBuilder.a_tip.with.
      name("Murta").
      address("Carrer la Murta (Beni)").
      message("El esmorssar es meleta").
      advisor("Sam").
      build

    post '/tips', JSON.dump(tip)

    expect(last_response.status).to eq(200)
    expect(last_parsed_response['id']).not_to be_nil
    expect(last_parsed_response['name']).to eq(tip['name'])
    expect(last_parsed_response['address']).to eq(tip['address'])
    expect(last_parsed_response['message']).to eq(tip['message'])
    expect(last_parsed_response['advisor']).to eq(tip['advisor'])
  end
end

class TipBuilder
  def self.a_tip
    new(
      name: 'Any name',
      address: 'Any address',
      message: 'Any message',
      advisor: 'Any advisor'
    )
  end

  def initialize(name:, address:, message:, advisor:)
    @name = name
    @address = address
    @message = message
    @advisor = advisor
  end

  def with
    self
  end

  def name(name)
    @name = name
    self
  end

  def address(address)
    @address = address
    self
  end

  def message(message)
    @message = message
    self
  end

  def advisor(advisor)
    @advisor = advisor
    self
  end

  def build
    {
      "name" =>  @name,
      "address" =>  @address,
      "message" =>  @message,
      "advisor" =>  @advisor
    }
  end
end
