class Card < ApplicationRecord
  def self.draw(num_cards)
    cards = [
      { title: "Balance", info: "Change alignment instantly.", image: ""},
      { title: "Comet", info: "Defeat the next monster you meet to gain one level.", image: ""},
      { title: "DonJon", info: "You are imprisoned.", image: ""},
      { title: "Eurayle", info: "–1 penalty on all saving throws henceforth.", image: ""},
      { title: "The Fates", info: "Avoid any situation you choose, once.", image: ""},
      { title: "Flames", info: "Enmity between you and an outsider.", image: ""},
      { title: "Fool", info: "Lose 10,000 experience points and you must draw again.", image: ""},
      { title: "Gem", info: "Gain your choice of 25 pieces of jewelry or 50 gems.", image: ""},
      { title: "Idiot", info: "Lose 1d4+1 Intelligence. You may draw again.", image: ""},
      { title: "Jester", info: "Gain 10,000 XP or two more draws from the deck.", image: ""},
      { title: "Key", info: "Gain a major magic weapon.", image: ""},
      { title: "Knight", info: "Gain the service of a 4th-level fighter.", image: ""},
      { title: "Moon", info: "You are granted 1d4 wishes.", image: ""},
      { title: "Rogue", info: "One of your friends turns against you.", image: ""},
      { title: "Ruin", info: "Immediately lose all wealth and property.", image: ""},
      { title: "Skull", info: "Defeat dread wraith or be forever destroyed.", image: ""},
      { title: "Star", info: "Immediately gain a +2 inherent bonus to one ability score.", image: ""},
      { title: "Sun", info: "Gain beneficial medium wondrous item and 50,000 XP.", image: ""},
      { title: "Queen of Pentacles", info: "All magic items you possess disappear permanently.", image: ""},
      { title: "Throne", info: "Gain a +6 bonus on Diplomacy checks plus a small castle.", image: ""},
      { title: "Vizier", info: "Know the answer to your next dilemma.", image: ""},
      { title: "The Void", info: "Body functions, but soul is trapped elsewhere.", image: ""}
    ]
    drawn_cards = []
    while drawn_cards.length < num_cards
      random_card = cards.sample
      if 
      drawn_cards.push(random_card)
    end
    drawn_cards
  end
end



