
class Song
  attr_accessor :name, :artist, :duration
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  
  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
 
 
  
end

class KaraokeSong < Song
  def initialize(name,artist,duration,lyrics)
    super(name,artist,duration)
    @lyrics = lyrics
  end
  
  def to_s
    #you can either write the intire format string:
    #"KaraokeSong: #{@name}--#{@artist} (duration: #{@duration} Lyrics: #{@lyrics})"
    #or you can use 'super' to implement format string form parent class and adds somthing to it:
    super + " Lyrics: [{#@lyrics}]"
  end
  
end

aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.inspect
puts aSong.to_s

aKaraokeSong = KaraokeSong.new("Bicylops", "Fleck", 260, "LajLajLaj...laj!")

puts aKaraokeSong.inspect
#If subclass dosent have a specified method then it looks for it in parent class. To check this out comment to_s method in class KaraokeSong
puts aKaraokeSong.to_s


#Class variables -  shared among all objects of a class, and it is also accessible to the class methods:

#Class variables are private to a class and its instances. If you want to make them accessible to the outside world, you'll need to write an accessor methods:
#attr_accessor -
#attr_reader - 
#attr_writer - 

class Song_count
    @@plays = 0
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
        @plays = 0
    end
    def play 
        @plays += 1
        @@plays += 1
        "This song #{@plays} plays. Total #{@@plays} play"
    end
    
end

s1 = Song_count.new("Song1", "Artist1", "234")
s2 = Song_count.new("Song2", "Artist2", "354")

puts s1.play
puts s1.play
puts s2.play
puts s1.play

#Class Methods -  methods that work without being tied to any particular object:

class SongList
  #you can define constant within a class - it must start with capital letter (camelcase)
  MaxTime = 5*60           #  5 minutes
  
  #you can define class method by adding class method name in the from of a mehtod:
=begin   ('=begin' is used to start multi line comment. It always needs to be at the begining of a line as well as '=end')
  
  class Example

      def instMeth              # instance method
      end
      
      def Example.classMeth     # class method
      end
  
  end
=end  
  
  
   def SongList.isTooLong(aSong)
     return aSong.duration > MaxTime
   end
 end

song1 = Song.new("Bicylops", "Fleck", 260)
puts SongList.isTooLong(song1)
song2 = Song.new("The Calling", "Santana", 468)
puts SongList.isTooLong(song2)

# Access Control:
    # Public methods can be called by anyone---there is no access control. Methods are public by default (except for initialize, which is always private).
    # Protected methods can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.
    # Private methods cannot be called with an explicit receiver. Because you cannot specify an object when using them, private methods can be called only in the defining class and by direct descendents within that same object.

    # class MyClass
    
    
    #       def method1    # default is 'public'
    #         #...
    #       end
    
    
    #   protected          # subsequent methods will be 'protected'
    
    
    #       def method2    # will be 'protected'
    #         #...
    #       end
    
    
    #   private            # subsequent methods will be 'private'
    
    
    #       def method3    # will be 'private'
    #         #...
    #       end
    
    
    #   public             # subsequent methods will be 'public'
    
    
    #       def method4    # and this will be 'public'
    #         #...
    #       end
    # end
    
    #OR you can create access control list like below:
    
    # class MyClass
    
    #     def method1
    #     end
            
            
    #     # ... and so on
            
            
    #     public    :method1, :method4
    #     protected :method2
    #     private   :method3
    # end
    

# !!VERY IMPORTANT - variables in Ruby are NOT object they are references to an object like alias - it holds a reference to particular object