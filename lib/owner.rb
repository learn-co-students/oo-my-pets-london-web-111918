require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def self.all
    @@all
  end

  def self.reset_all
  @@all.clear
  end

  def self.count
  @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    dog = self.pets[:dogs][0]
    dog.mood = "happy"
  end

  def play_with_cats
    cat = self.pets[:cats][0]
    cat.mood = "happy"
  end

  def feed_fish
    fish = self.pets[:fishes][0]
    fish.mood = "happy"
  end

  def sell_pets
      self.pets.map {|species, pet_array|
        pet_array.map {|pet| pet.mood = "nervous"}
      }
      self.pets.map {|species, pet_array| pet_array.clear}
  end

end
