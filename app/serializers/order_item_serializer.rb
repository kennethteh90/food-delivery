class OrderItemSerializer < ActiveModel::Serializer
  attributes :name, :quantity, :total_price

  def name
    object.meal.name
  end

  def total_price
    object.unit_price * object.quantity
  end

end
