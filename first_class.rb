class Person
  attr_accessor :name

  def initialize (name)
    @name = name
  end
end


per = Person.new("Jeff")
puts "Here is my new instance of a Person: #{per}"
puts "My name is #{per.name}"
per.name = "Rob"
puts "Now my name is #{per.name}"
