class Pet 
    # Defines a class named Pet

    attr_accessor :name 
    # Creates both getter and setter methods for @name

    attr_reader :species
    # Creates a getter method for @species (no setter)

    @@all_pets = []
    # Initializes a class variable @@all_pets as an empty array

    def initialize(name, species)
        # Defines the constructor method with name and species parameters

        @name = name 
        # Sets instance variable @name to the provided name argument

        @species = species
        # Sets instance variable @species to the provided species argument

        @@all_pets << self
        # Adds the current instance of Pet (self) to the @@all_pets array

    end 

    def display_info 
        # Defines an instance method display_info

        puts "I am a #{@species} named #{@name}."
        # Outputs a string with the pet's species and name

    end 

    def is_cat? 
        # Defines an instance method is_cat?, which is a virtual attribute

        @species == 'cat'
        # Returns true if the species of the pet is 'cat', otherwise false

    end 

    def self.list_all_pets
        # Defines a class method list_all_pets

        @@all_pets.each do |pet|
            # Iterates over each pet in the @@all_pets array

            puts "Pet #{pet.name}, Species: #{pet.species}"
            # Outputs the name and species of each pet

        end 
    end 
end
