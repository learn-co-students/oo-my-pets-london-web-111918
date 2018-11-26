require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets # Code passes but stinks!!! Refactor into one line
    self.pets[:dogs].map {|dog| dog.mood = "nervous" if dog.mood = "happy"}
    self.pets[:cats].map {|cat| cat.mood = "nervous" if cat.mood = "happy"}
    self.pets[:fishes].map {|fish| fish.mood = "nervous" if fish.mood = "happy"}
    pets.clear
  end

  def list_pets
    x = self.pets[:fishes].length
    y = self.pets[:dogs].length
    z = self.pets[:cats].length
    "I have #{x} fish, #{y} dog(s), and #{z} cat(s)."
  end

end
