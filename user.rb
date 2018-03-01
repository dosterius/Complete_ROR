module Destructable
  def destroy(anyobject)
      puts "I will destroy the object: \nBecause I can"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email) 
    @name = name 
    @email = email
  end
  
  def run 
    puts "hey I'm running"
  end
  
  #class method it's being used by adding id def word 'self.'
  def self.identify_yourself
    puts "Hey, I'm a class method. You can $%#$@# me!!"
  end 
  
end

class Buyer < User
  def run
    puts "Hey I'm not running I'm in the Buyer's class now"
  end
end

class Seller < User
    
end

class Admin < User
    
end


user = User.new("Damian", "damian@example.com")
puts "My user's name is #{user.name} and his email is #{user.email}"
user.name = "John"
user.email = "John@example.com"
puts "My user's name is #{user.name} and his email is #{user.email}"



buyer1 = Buyer. new("JD","JD@example.com")
buyer1.run
seller1 = Seller. new("JD1","J1D@example.com")
seller1.run
admin1 = Admin. new("JD2","JD2@example.com")
admin1.run
puts buyer1.name
puts buyer1.email

puts Buyer.ancestors

User.identify_yourself

user.destroy("myname")
puts ""
5.times {  print "*" }
3.upto(6) {|i|  print i }
('a'..'e').each {|char| print char } 
puts ""
