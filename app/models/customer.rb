class Customer < ApplicationRecord
  belongs_to :room

  validates :first_name ,  presence: true
  validates :last_name , presence: true
  validates :tel_no ,presence: true
end
