class Repository
  @@data = []

  def self.all
    @@data
  end

  def self.store(something)
    @@data << something
  end
end
