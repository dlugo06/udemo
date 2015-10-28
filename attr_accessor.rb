class Class
  def my_attr_accessor(*args)
      # iterate through each passed in argument...
      args.each do |arg|
          # getter
          self.class_eval("def #{arg};@#{arg};end")

          # setter
          self.class_eval("def #{arg}=(val);@#{arg}=val;end")
      end
  end
end


class Person
  my_attr_accessor :name

  def initialize (name)
    @name = name
  end
end


per = Person.new("Jeff")
puts "Here is my new instance of a Person: #{per}"
puts "My name is #{per.name}"
per.name = "Rob"
puts "Now my name is #{per.name}"
