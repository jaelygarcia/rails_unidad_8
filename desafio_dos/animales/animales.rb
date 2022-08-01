class Animal
  attr_reader :name

  def initialize(name)
    @name = name    
  end
end

class Bird < Animal
end

class Insect < Animal
end

class Mammal < Animal
end
