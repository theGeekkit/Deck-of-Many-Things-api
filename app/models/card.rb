class Card < ApplicationRecord
  def self.draw(num_cards)
    cards = Card.where(used: false).to_a.shuffle
    drawn_cards = []

    num_cards.times do
      break if cards.empty?

      random_card = cards.pop
      random_card.update(used: true)
      drawn_cards << random_card
    end

   return drawn_cards
   print drawn_cards
  end
end
