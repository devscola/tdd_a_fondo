require_relative 'helpers'

describe 'Repository' do
  before do
    TestRepository.flush
  end
  after do
    TestRepository.flush
  end
  it 'provides all stored data' do
    descriptor = { 'a_key' => 'a_value'}
    another = { 'another_key' => 'another_value'}
    Repository.store(descriptor)
    Repository.store(another)

    all = Repository.all

    expect(all.size).to eq(2)
    expect(all.first['a_key']).to eq('a_value')
  end

  it 'provides an id when storing a tip' do
    a_descriptor = { 'key' => 'value'}

    stored = Repository.store(a_descriptor)

    expect(stored['key']).to eq('value')
    expect(stored['id']).not_to be_nil
  end
end
