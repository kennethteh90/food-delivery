class OrderItemSerializer < ActiveModel::Serializer
  attributes :order_item_id, :name

  def name
    object.meal.name
  end

  def order_item_id
    object.meal_id
  end

  # def total_price
  #   object.unit_price * object.quantity
  # end
end
