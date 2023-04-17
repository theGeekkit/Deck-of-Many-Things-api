class Deck < ApplicationRecord
    has_many :deck_list
    has_many :card through: :deck_list

end
