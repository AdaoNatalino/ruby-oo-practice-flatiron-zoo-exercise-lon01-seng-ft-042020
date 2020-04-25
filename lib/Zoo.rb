class Zoo
    @@all = []
    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        a = self.animals.map{|animal| animal.specie}.uniq
    end

    def find_by_species(a_specie)
        self.animals.select{|animal| animal.specie == a_specie}
    end

    def animal_nicknames(a_nickname)
        self.animals.select{|animal| animal.nickname == a_nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select {|zoo| zoo.location == location}
    end
end
