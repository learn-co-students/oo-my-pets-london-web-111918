class Owner
  attr_accessor :pets, :fish, :dog, :cat, :mood, :name

@@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
    dog.mood = "happy"
      end
  end

  def sell_pets
    @pets.each do |breed, pets|
      pets.each do |animal|
        animal.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end

    def species(specie="human")
      @specie = specie
    end


  def say_species
    if self.species == "human"
      "I am a human."
    end
  end



end
