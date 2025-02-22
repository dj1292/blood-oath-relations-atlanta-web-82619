class Follower

    attr_reader :name, :age
    attr_accessor :life_motto

@@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @@all << self 
    end 

    def cults
        BloodOath.all.select {|oath| oath.follower == self}.map {|oath| oath.cult}
    end 

    def my_cults_slogans
        cults.each {|cult| puts "#{cult.slogan}"}
    end 

    def join_cult(cult)
        oath = BloodOath.new(cult, self)
        oath.follower = self
    end

    def self.most_active
        @@all.max {|follower1, follower2| follower1.cults.size <=> follower2.cults.size}
    end 

    def self.top_ten
        @@all.max(10) {|f1, f2| f1.cults.size <=> f2.cults.size}
    end 




end 