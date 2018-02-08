class DeliveryOrder < ApplicationRecord
  has_many :order_items
  has_one :feedback, as: :ratable, foreign_key: 'ratable_id'
  self.primary_key = 'order_id'
end
