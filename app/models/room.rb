class Room < ApplicationRecord
  has_many :customer

  validates :room_number , presence: true
  validates :room_price , presence: true , numericality: { only_integer: true }
  validates :room_des  , presence: true
end
