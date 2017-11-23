class Dummy
  def register_client(client)
  end
end

class Stub
  def register_client(client)
  end

  def do_something_important
    'OK'
  end
end

class Mock
  def initialize
    @calls = []
  end

  def register_client(client)
  end

  def do_something_important
    @calls << 'do_something_important'
  end

  def verify(call)
    @calls.include?(call)
  end
end
