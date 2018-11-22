class Owner
  # code goes here
@@all = []


  attr_accessor :pets, :name
  attr_reader :species

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end



  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    return "I am a #{self.species}."
  end


  def buy_fish(pet_name)
    new_pet = Fish.new(pet_name)
    self.pets[:fishes] << new_pet
  end

  def buy_cat(pet_name)
    new_pet = Cat.new(pet_name)
    self.pets[:cats] << new_pet
  end

  def buy_dog(pet_name)
    new_pet = Dog.new(pet_name)
    self.pets[:dogs] << new_pet
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
    dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |species, array_of_pets|
      array_of_pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.each do |species, array_of_pets|
      array_of_pets.clear
    end
  end

  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
  end
