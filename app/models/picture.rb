class Picture < ApplicationRecord
  belongs_to :store
  attachment :image
end
