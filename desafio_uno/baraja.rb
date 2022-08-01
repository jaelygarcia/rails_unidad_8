require_relative "cartas"

FIVE_CARDS = 5
CARDS_SUITS = ["C", "D", "E", "T"]

class Deck
  attr_accessor :cards
  
  def initialize
    @cards = []
    FIVE_CARDS.times do
      card = Card.new(rand(1..13), CARDS_SUITS.sample)
      cards.push(card)
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def throw
    @cards.pop
  end

  def hand_out
    @cards = @cards.drop(FIVE_CARDS)
  end

  def display_cards
    for card in cards
      print "#{card.number}#{card.suit} "
    end
  end
end

deck = Deck.new
deck.display_cards
puts ""
deck.shuffle
deck.display_cards
puts ""
deck.throw
deck.display_cards
puts ""
puts deck.hand_out.length
