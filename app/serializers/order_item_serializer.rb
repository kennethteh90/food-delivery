class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :unit_price
end
