require_relative '../config/environment.rb'

def reload
load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
andrea = Follower.new("Andrea", 37, "Do to others what you want them to do to you." )
  dan = Follower.new("Dan", 26, "There's no vibration in stagnance.")
  cherie = Follower.new("Cherie", 25, "Just do it.")
  raza = Follower.new("Raza", 27, "Hip, hip, array!")
  alex = Follower.new("Alex", 24, "This is fun.")
  justina = Follower.new("Justina", 37, "This is something, idk about fun.")
  danny = Follower.new("Danny", 32, "Uhhh, idk")
  adrian = Follower.new("Adrian", 24, "This is real deal here.")
  princeton = Follower.new("Princeton", 27, "I am a coach.")
  andrew = Follower.new("Andrew", 27, "I am breezing through this.")
  brit = Follower.new("Brit", 29, "I'm out dis bihh")


  flatiron = Cult.new("Flatiron", "Atlanta", 2012, "Learn, love, code.")
  digital_crafts = Cult.new("Digital Crafts", "Atlanta",2016, "We build the web.")
  general_assembly = Cult.new("General Assembly", "Atlanta", 2011, "General Assembly is the solution 
    to the global skills gap.")
  ga_dc = Cult.new("General Assembly", "Washington D.C.", 2011, "Code is life.")
  
  andrea.join_cult(flatiron)
  dan.join_cult(flatiron)
  cherie.join_cult(digital_crafts)
  andrea.join_cult(digital_crafts)
  cherie.join_cult(general_assembly)
  cherie.join_cult(flatiron)
  raza.join_cult(flatiron)
  alex.join_cult(flatiron)
  justina.join_cult(flatiron)
  danny.join_cult(digital_crafts)
  adrian.join_cult(flatiron)
  princeton.join_cult(flatiron)
  andrew.join_cult(flatiron)
  brit.join_cult(digital_crafts)
  brit.join_cult(flatiron)
  andrew.join_cult(digital_crafts)
  raza.join_cult(digital_crafts)



  
  


puts "Mwahahaha!" # just in case pry is buggy and exits
