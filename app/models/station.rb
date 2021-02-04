class Station < ApplicationRecord
  has_many :platforms
  has_one_attached :image
end
