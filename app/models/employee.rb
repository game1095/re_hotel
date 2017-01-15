class Employee < ApplicationRecord
  # validates :first_name , presence: { message: "Story title is required" }
  validates :first_name , presence: true
  validates :last_name  , presence: true
  validates :department , presence: true
end
