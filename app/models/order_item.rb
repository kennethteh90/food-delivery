class OrderItem < ApplicationRecord
  belongs_to :meal
  has_one :feedback, as: :ratable, foreign_key: "ratable_id"
  self.primary_key = 'meal_id'
end
