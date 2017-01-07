class Store < ApplicationRecord
  CUISINES = ["--", "British", "American Fusion", "Bakery", "Pizza", "Italian", "Mexican", "Asian/Sushi", "Seafood", "Other"]
  PRICES = [
    ["--", 0],
    ["$", 1],
    ["$$", 2],
    ["$$$", 3],
    ["$$$$", 4],
    ["$$$$$", 5]
  ]

  validates :name, presence: true
  validates :address, presence: true
  validates :hours, presence: true
  validates :phone, presence: true

  attachment :menu

  has_many :pictures
end
