require_relative "modulos"
require_relative "animales"

class Penguin < Bird
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Dove < Bird
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Duck < Bird
  include Habilidades::Volador
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Omnivoro
end

penguin1 = Penguin.new("Skiper")
puts penguin1.nadar
puts penguin1.sumergir
puts "---"

dove1 = Dove.new("Palomo")
puts dove1.volar
puts dove1.aterrizar
puts "---"

duck1 = Duck.new("Desaidoc")
puts duck1.aterrizar
puts duck1.comer
puts "---"
