class Owner
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_dog(name)
new_dog = Dog.new(name)
new_dog.owner = self
self.pets[:dogs] << new_dog
  end

  def buy_cat(name)
new_cat = Cat.new(name)
new_cat.owner = self
self.pets[:cats] << new_cat
  end

  def buy_fish(name)
new_fish = Fish.new(name)
new_fish.owner = self
self.pets[:fishes] << new_fish
  end

def self.all
@@all
end

def self.count
self.all.count
end

def self.reset_all
@@all = []
end

def species
"human"
end

def say_species
"I am a human."
end

def walk_dogs
self.pets[:dogs].each do
  |dog| dog.mood = "happy"
end
end

def play_with_cats
self.pets[:cats].each do
  |cat| cat.mood = "happy"
end
end

def feed_fish
self.pets[:fishes].each do
  |fish| fish.mood = "happy"
end
end

def sell_pets
self.pets.each do |animal, array|
  array.each do |pet|
    pet.mood = "nervous"
end
end
self.pets = {fishes: [], cats: [], dogs: []}
end

def list_pets
fish_count = self.pets[:fishes].length
cat_count = self.pets[:cats].length
dog_count = self.pets[:dogs].length
"I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
end

end
