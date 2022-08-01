class Card
  attr_accessor :number, :suit

  def initialize(number, suit)
    raise RangeError, "Se debe ingresar un número entre 1 a 13." if !(number > 0 && number <= 13)
    raise RangeError, "Se debe ingresar la inicial de la pinta." if suit.length != 1
    @number = number
    @suit = suit    
  end
end
