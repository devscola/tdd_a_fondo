class Sut
  def initialize(collaborator)
    collaborator.register_client(self)

    @collaborator = collaborator
  end

  def collaborator_not_needed_method
    'OK'
  end

  def collaborator_needed_method
    @collaborator.do_something_important
  end
end

class Collaborator
  def register_client(client)
    @client = client
  end

  def do_something_important
    expensive_method
    'OK'
  end

  private

  def expensive_method
    raise 'I am very expensive'
  end
end
