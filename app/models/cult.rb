class Cult

    attr_reader :name, :location, :slogan, :founding_year

    @@all = []

    def initialize(name, location, slogan, founding_year)
        @name = name 
        @location = location 
        @slogan = slogan 
        @founding_year = founding_year
        followers = []
        @@all << self 
    end
    
    def recruit_follower(follower)
        self.followers << follower
    end

    def cult_population
        self.followers.size 
    end 

    def Cult.all
        @@all
    end 

    def self.find_by_name(name)
        @@all.select {|cult| cult.name == name}
    end 

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        @@all.select {|cult| cult.founding_year == founding_year}
    end

    def average_age
        ages = followers.map {|oath| oath.follower.age.to_f}
        ages.sum / ages.size 
    end 

    def followers
        oaths = BloodOath.all.select {|oath| oath.cult == self}
        followers = oaths.map {|oath| oath.follower}
    end 


    def my_follower_mottos
        mottos = followers.map {|oath| oath.follower.life_motto}
        mottos.each {|motto| puts motto}
    end 

    def self.least_popular
        @@all.min {|cult1, cult2| cult1.cult_population <=> cult2.cult_population}
    end

    def self.most_common_location
        location = @@all.map {|cult| cult.location}
        location.max_by {|i| locations.count}
    end

end 
