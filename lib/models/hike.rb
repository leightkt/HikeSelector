class Hike < ActiveRecord::Base
    # choices = ["Location", "Dog Friendly?", "Elevation Gain", "Difficulty", "Distance"]
    has_many :userhikes
    has_many :users, through: :userhikes

    def self.dog_friendly?
        self.where("dog_friendly = ?", true)
    end

    def self.elevation(gain)
        self.where("elevation < ?", gain)
    end

    def self.distance(miles)
        self.where("distance < ?", miles)
    end

    def self.difficulty(selection)
        self.where("difficulty = ?", selection)
    end

    def self.location(location)
        self.where("location = ?", location)
    end

    def self.unique_locations
        self.pluck(:location).uniq
    end

end

