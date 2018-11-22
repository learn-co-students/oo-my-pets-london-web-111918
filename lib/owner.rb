class Owner
  # code goes here
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = { :cats => [], :dogs => [], :fishes => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    return "I am a human."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do |animal, pets|
      pets.each do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
