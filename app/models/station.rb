class Station < ApplicationRecord
  has_many :platforms
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
  end
end
