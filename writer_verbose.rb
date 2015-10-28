class Person
  # attr_writer :name
  attr_reader :name #we need this to see that we have in fact changed the name to "Rob"

  def initialize (name)
    @name = name
  end

  def name=(val)
    @name = val
  end
end


per = Person.new("Jeff")
puts "Here is my new instance of a Person: #{per}"
# puts "My name is #{per.name}"
per.name = "Rob"
puts "Now my name is #{per.name}"
