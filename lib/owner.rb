class Owner
  attr_accessor :name, :pets
  attr_reader  :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |pet_type|
        pet_type.each do |pet|
        pet.mood = "nervous"
        end
    end
  end
    @pets.clear
  end


  # class methods

  def self.count
    self.all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

end
