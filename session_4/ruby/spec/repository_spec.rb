require_relative 'helpers'

describe 'Repository' do
  it 'provides all stored data' do
    TestRepository.store('blabla')

    all = Repository.all

    expect(all).to include('blabla')
  end

  it 'can store more than one tip' do
    Repository.store('something')
    Repository.store('anotherthing')

    all = Repository.all

    expect(all).to include('something', 'anotherthing')

  end
end
