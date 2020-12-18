require_relative "./ship"

class Pirate

    attr_accessor :name, :weight, :height, :ship_1, :ship_2

    @@all = []

    def initialize(hash)
        @name = hash[:pirate][:name]
        @weight = hash[:pirate][:weight]
        @height = hash[:pirate][:height]
        @ship_1 = Ship.new(hash[:pirate][:ships][0])
        @ship_2 = Ship.new(hash[:pirate][:ships][1])
        @@all << self
    end

    def self.all
        @@all
    end

end