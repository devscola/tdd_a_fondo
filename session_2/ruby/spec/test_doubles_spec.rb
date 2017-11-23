require_relative '../src/sut'
require_relative '../src/doubles'

describe 'Test doubles' do
  describe 'dummy object' do
    it 'does not do anything' do
      sut = Sut.new(Dummy.new)

      expect(sut.collaborator_not_needed_method).to eq('OK')
    end
  end

  describe 'stub' do
    it 'returns a canned answer to calls' do
      sut = Sut.new(Stub.new)

      expect(sut.collaborator_needed_method).to eq('OK')
    end
  end

  describe 'mock' do
    it 'can verify the calls made' do
      mock = Mock.new
      sut = Sut.new(mock)

      sut.collaborator_needed_method

      expect(mock.verify('do_something_important')).to eq(true)
    end
  end
end
