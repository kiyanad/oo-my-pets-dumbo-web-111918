require 'pry'

class Owner
@@all =[]
@@count = 0

attr_accessor :name, :pets
attr_reader :species

def initialize(species)
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all << self
 @@count += 1
end

def self.all
  @@all
end

def self.count
  @@count
end

def self.reset_all
  @@count = 0
end


def say_species
  return "I am a #{@species}."

end

def buy_fish(fish)
 pets[:fishes] << Fish.new(fish)

end

def buy_cat(cat)
 pets[:cats] << Cat.new(cat)

end

def buy_dog(dog)
 pets[:dogs] << Dog.new(dog)

end

def walk_dogs
pets[:dogs].each do |dog|
  dog.mood = "happy"
  #binding.pry
end

end

def play_with_cats
pets[:cats].each do |cat|
  cat.mood = "happy"
  #binding.pry
end
end

def feed_fish
#  binding.pry
pets[:fishes].each do |fish|
  fish.mood = "happy"
end
end

def sell_pets
 pets.each do |species, animals|
   animals.each do |animal|
     animal.mood = "nervous"
end
animals.clear
end
end


def list_pets
  #binding.pry
  return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

end
end
