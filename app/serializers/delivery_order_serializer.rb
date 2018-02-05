class DeliveryOrderSerializer < ActiveModel::Serializer
  attributes :order_id, :serving_datetime
  has_many :order_items

  # private

  # def items
  #   OrderItemSerializer.new(object.order_items).attributes
  # end

  # def delivery_date
  #   delivery_date = serving_datetime.to_date
  # end


  # def current
  #   {
  #     temp: 1,
  #     status: "rainy"
  #   }
  # end

end
