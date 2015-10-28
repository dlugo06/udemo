class Class
  def attr_accessor_with_count(attr_name)
    attr_name = attr_name.to_s #will allow the passing of symbols as arguments
    attr_count_name = attr_name + '_count'

    #getter
    self.class_eval("def #{attr_name}; @#{attr_name}; end")

    #setter
    self.class_eval("
      def #{attr_name}=(val)
        # add to count
        @#{attr_count_name} = 0 if @#{attr_count_name}.nil?
        @#{attr_count_name} += 1

        # Set the value itself
        @#{attr_name}=val
      end

      def #{attr_count_name}; @#{attr_count_name};end
    ")
  end
end

class Person
  attr_accessor_with_count :name

  def initialize(name)
    self.name = name
  end
end

m = Person.new("Jeff")
m.name = 1
m.name = "asdasd"
m.name = "tedd"
m.name = :skdjhi
puts "The variable @name has been defined #{m.name_count} times"
