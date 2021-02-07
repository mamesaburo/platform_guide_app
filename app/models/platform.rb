class Platform < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :elevator
  belongs_to_active_hash :escalator
  belongs_to_active_hash :toilet
  belongs_to_active_hash :coinlocker
  belongs_to :station

  with_options presence: true do
    validates :number
    validates :elevator_id
    validates :escalator_id
    validates :toilet_id
    validates :coinlocker_id
  end
end
