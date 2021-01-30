class Platform < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :elevator
  belongs_to_active_hash :escalator
  belongs_to_active_hash :toilet
end
