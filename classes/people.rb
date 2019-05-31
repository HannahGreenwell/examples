##### Class + Methods #####

# require 'pry'

# class Person

#   def say_hello
#     puts "Hi!"
#   end

#   def laugh
#     puts "Hahahaha!"
#   end

# end

# binding.pry
# puts "Done!" # add this line otherwise pry just exits and we can't test our class

# # Create an instance of the Person object
# person = Person.new

# # Call methods on the instance
# person.speak
# person.laugh


##### Attributes - Getter + Setter, Local Variables + Instance Variables

# require 'pry'

# class Person

#   # We want to store information on a person!

#   # SETTER: lets us do: person.name = "some name"
#   def name=(new_name)
#     @name = new_name
#   end

#   # GETTER: return the value of an internal instance variable (make it visible to "the outside world")
#   def name
#     @name
#   end

#   def say_hello
#     puts "Hi! My name is #{@name} and I'm #{@age} years old."
#   end

#   def laugh
#     puts "Hahahaha!"
#   end

# end

# binding.pry
# puts "Done!" # add this line otherwise pry just exits and we can't test our class


##### attr_accessor

# require 'pry'

# class Person

#   # We want to store information on a person!

#   # This will write the GETTER and SETTER boilerplate methods for @age and @name
#   attr_accessor :name, :age

#   # # SETTER: lets us do: person.name = "some name"
#   # def name=(new_name)
#   #   @name = new_name
#   # end

#   # # GETTER: return the value of an internal instance variable (make it visible to "the outside world")
#   # def name
#   #   @name
#   # end

#   def say_hello
#     puts "Hi! My name is #{@name} and I'm #{@age} years old."
#   end

#   def laugh
#     puts "Hahahaha!"
#   end

# end

# binding.pry
# puts "Done!" # add this line otherwise pry just exits and we can't test our class


##### initialize, more methods #####

# require 'pry'

# class Person

#   # We want to store information on a person!

#   # This will write the GETTER and SETTER boilerplate methods for @age and @name
#   attr_accessor :name, :age

#   # # SETTER: lets us do: person.name = "some name"
#   # def name=(new_name)
#   #   @name = new_name
#   # end

#   # # GETTER: return the value of an internal instance variable (make it visible to "the outside world")
#   # def name
#   #   @name
#   # end

#   # The initialize method is run whenever we do Person.new
#   def initialize(name, age=100)
#     puts "Making a new Person object..."
#     @name = name
#     @age = age
#   end

#   def say_hello
#     puts "Hi! My name is #{@name} and I'm #{@age} years old."
#   end

#   def laugh
#     puts "Hahahaha!"
#   end

#   def laugh_at(person)
#     # This code will cause an error unless person is a kind
#     # of object with a .name attribute (method) defined
#     puts "Hahaha! You're so funny #{person.name}"
#   end

#   def die
#     puts "Uggggghhh the light grows dim..."
#   end
# end

# binding.pry
# puts "Done!" # add this line otherwise pry just exits and we can't test our class


##### Inheritance #####

require 'pry'

class Person

  # We want to store information on a person!

  # This will write the GETTER and SETTER boilerplate methods for @age and @name
  attr_accessor :name, :age

  # # SETTER: lets us do: person.name = "some name"
  # def name=(new_name)
  #   @name = new_name
  # end

  # # GETTER: return the value of an internal instance variable (make it visible to "the outside world")
  # def name
  #   @name
  # end

  # The initialize method is run whenever we do Person.new
  def initialize(name, age=100)
    puts "Making a new Person object..."
    @name = name
    @age = age
  end

  def say_hello
    puts "Hi! My name is #{@name} and I'm #{@age} years old."
  end

  def laugh
    puts "Hahahaha!"
  end

  def laugh_at(person)
    # This code will cause an error unless person is a kind
    # of object with a .name attribute (method) defined
    puts "Hahaha! You're so funny #{person.name}"
  end

  def die
    puts "Uggggghhh the light grows dim..."
  end
end

# Comedian class will inherit data/attributes and functions/methods from its parent class - Person
class Comedian < Person

  def tell_joke
    puts "What's brown and sticky?"
    3.times do
      puts "."
      sleep 0.4
    end
    puts "A stick."
  end

  def laugh
    puts "Hahaha! I'm so funny!"
  end

  def say_hello
    # super() will call the say_hello() method defined in the parent class,
    # AKA superclass, i.e. you can override a method defined in the
    # parent class in your child class, but still have access
    # to the version of the method in the parent class
    super()
    puts "Hi! I'm a comedian!"
  end
end


binding.pry
puts "Done!" # add this line otherwise pry just exits and we can't test our class


# class SerialKiller < Person
#   def laugh
#     puts "MUAHAHAHHAHA"
#   end

#   def taunt_police
#     puts "The call is coming from inside the police station."
#   end

#   def kill(victim)
#     victim.die()
#     puts "u ded gurrrlll/bro"
#   end
# end

# binding.pry
# puts "Done!"
