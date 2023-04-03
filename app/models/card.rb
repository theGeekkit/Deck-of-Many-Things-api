class Card < ApplicationRecord
  def self.draw(num_cards)
    cards = [
      { title: "Balance", info: "Change alignment instantly.", image: "https://i.postimg.cc/ncskz8yY/Balance.jpg"},
      { title: "Comet", info: "Defeat the next monster you meet to gain one level.", image: "https://i.postimg.cc/8CGBt7jt/Comet.jpg"},
      { title: "DonJon", info: "You are imprisoned.", image: "https://i.postimg.cc/4dL6fwwS/DonJon.jpg"},
      { title: "Eurayle", info: "–1 penalty on all saving throws henceforth.", image: "https://i.postimg.cc/wMnDJvC5/Euryale.jpg"},
      { title: "The Fates", info: "Avoid any situation you choose, once.", image: "https://i.postimg.cc/kXtQCQST/Fates.jpg"},
      { title: "Flames", info: "Enmity between you and an outsider.", image: "https://i.postimg.cc/9f1TbJ3Q/Flames.jpg"},
      { title: "Fool", info: "Lose 10,000 experience points and you must draw again.", image: "https://i.postimg.cc/s1FZxLWw/Fool.jpg"},
      { title: "Gem", info: "Gain your choice of 25 pieces of jewelry or 50 gems.", image: "https://i.postimg.cc/nVNdqcYw/Gem.jpg"},
      { title: "Idiot", info: "Lose 1d4+1 Intelligence. You may draw again.", image: "https://i.postimg.cc/0y0cgGgL/Idiot.jpg"},
      { title: "Jester", info: "Gain 10,000 XP or two more draws from the deck.", image: "https://i.postimg.cc/bvYLqGpd/Jester.jpg"},
      { title: "Key", info: "Gain a major magic weapon.", image: "https://i.postimg.cc/7hznK0Mt/Key.jpg"},
      { title: "Knight", info: "Gain the service of a 4th-level fighter.", image: "https://i.postimg.cc/W186Y2gV/knight.jpg"},
      { title: "Moon", info: "You are granted 1d4 wishes.", image: "https://i.postimg.cc/LXYtsL74/Moon.jpg"},
      { title: "Rogue", info: "One of your friends turns against you.", image: "https://i.postimg.cc/02qY86Cx/Rogue.jpg"},
      { title: "Ruin", info: "Immediately lose all wealth and property.", image: "https://i.postimg.cc/6pMnLMx5/Ruin.jpg"},
      { title: "Skull", info: "Defeat dread wraith or be forever destroyed.", image: "https://i.postimg.cc/gjy6wDKp/skull.jpg"},
      { title: "Star", info: "Immediately gain a +2 inherent bonus to one ability score.", image: "https://i.postimg.cc/bwVS2d1Z/Star.jpg"},
      { title: "Sun", info: "Gain beneficial medium wondrous item and 50,000 XP.", image: "https://i.postimg.cc/FR3YqZ8S/Sun.jpg"},
      { title: "Talons", info: "All magic items you possess disappear permanently.", image: "https://i.postimg.cc/YqbhJjnd/Talon.jpg"},
      { title: "Throne", info: "Gain a +6 bonus on Diplomacy checks plus a small castle.", image: "https://i.postimg.cc/6q1xhscf/Throne.jpg"},
      { title: "Vizier", info: "Know the answer to your next dilemma.", image: "https://i.postimg.cc/SRRwRT42/Vizier.jpg"},
      { title: "The Void", info: "Body functions, but soul is trapped elsewhere.", image: "https://i.postimg.cc/wTtCdGFn/Void.jpg"}
    ]
    drawn_cards = []
    while drawn_cards.length < num_cards
      random_card = cards.sample   
      unless random_card[:used]
          random_card[:used] = true
          drawn_cards.push(random_card)
      end
    end
   drawn_cards
  end
end



