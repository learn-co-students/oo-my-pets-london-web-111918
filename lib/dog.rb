class Dog
  attr_accessor :owner, :mood
  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
end
end
