
# Namespaces -  Modules define a namespace, a sandbox in which your methods and constants can play without having to worry about being stepped on by other methods and constants. If you have names of methods or constants doubled it creates a conflict... for example: if you have method sin reffering to math and then you have another method called sin reffering to method calculating how bad you are you can refference thenm both with modules: first will go to module called Trig and the other to module called Action - this way you don't have to worry about conflicts in your program

# Mixins - what happens if I define instance methods within a module? Good question. A module can't have instances, because a module isn't a class. However, you can include a module within a class definition. When this happens, all the module's instance methods are suddenly available as methods in the class as well. They get mixed in. In fact, mixed-in modules effectively behave as superclasses: 

module Debugable
  def whoAmI?
    "#{self.name} (\##{self.id}): #{self.to_s}"
  end
end

class Phonograph
  include Debugable
  attr_accessor :name, :id, :to_s
  def initialize(name, id, to_s) 
    @name = name 
    @id = id
    @to_s = to_s
  end
  
end

class EightTrack
  include Debugable
end

ph = Phonograph.new("West End Blues", 101, "jal")
#et = EightTrack.new("Surrealistic Pillow")
puts ph.whoAmI? 
# et.whoAmI?