class Store < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :hours, presence: true
  validates :phone, presence: true

  attachment :menu

  has_many :pictures
end
