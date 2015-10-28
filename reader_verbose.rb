class Person
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def name
    @name
  end
end


per = Person.new("Jeff")
puts "Here is my new instance of a Person: #{per}"
puts "My name is #{per.name}"
