class Owner

   attr_accessor :name, :mood, :pets

   @@all = []

   def initialize(owner)
     @owner = owner
     @pets = {:fishes => [], :dogs => [], :cats => []}
     @@all << self
   end

   def self.all
     @@all
   end

   def self.count
     self.all.count
   end

   def self.reset_all
     @@all.clear.count
   end

   def species
     "human"
   end

   def say_species
     "I am a human."
   end

   def buy_fish(name)
     bought_fish = Fish.new(name)
     pets[:fishes] << bought_fish
   end

   def buy_cat(name)
     bought_cat = Cat.new(name)
     pets[:cats] << bought_cat
   end

   def buy_dog(name)
     bought_dog = Dog.new(name)
     pets[:dogs] << bought_dog
   end

   def walk_dogs
    pets[:dogs].each do |mood|
      mood.mood = "happy"
    end
   end

   def play_with_cats
     pets[:cats].each do |mood|
       mood.mood = "happy"
     end
   end

   def feed_fish
     pets[:fishes].each do |mood|
       mood.mood = "happy"
     end
   end

   def sell_pets
     pets.each  do |animal, pet_array|
       pet_array.each do |pet|
         pet.mood = "nervous"
        end
        pet_array.clear
     end

   end

   def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
   end



end
