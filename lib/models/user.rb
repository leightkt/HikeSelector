class User < ActiveRecord::Base
    has_many :userhikes
    has_many :hikes, through: :userhikes

    def self.check_if_exist username
        self.find_by username: username
    end

    def validate_password password
        self.password_string == password
    end

    def favorite_hikes
        user_hikes = self.userhikes
        user_hikes.map do |user_hike|
            Hike.find(user_hike.hike_id).name
        end
    end

    def check_in_favorites(hike)
        favorite_hikes = self.userhikes
        favorite_hikes.find do |favorite_hike|
            favorite_hike.hike_id == hike.id
        end
    end

end