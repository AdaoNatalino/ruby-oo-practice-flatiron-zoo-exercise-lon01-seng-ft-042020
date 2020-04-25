class Animal
    @@all = []

    attr_reader :specie, :nickname
    attr_accessor :weight, :zoo

    def initialize(specie, weight, nickname, zoo)
        @specie = specie
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self    
    end
    
    def self.all
        @@all
    end

    def self.find_species(specie)
        Animal.all.select {|animal| animal.specie == specie}
    end
end
