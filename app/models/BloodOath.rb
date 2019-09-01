class BloodOath 

    attr_accessor :cult, :follower

    @@all = []


    def initialize(cult, follower)
        @cult = cult 
        @follower = follower
        @@all << self 
        @initiation_date = Time.now
    end 

    def self.all
        @@all
    end 

    def initiation_date
        @initiation_date.strftime("%Y-%m-%d")
    end

    def self.first_oath
        @@all.first.follower
    end 


end 