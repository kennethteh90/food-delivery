class DeliveryOrderSerializer < ActiveModel::Serializer
  attributes :order_id, :serving_datetime, :delivery_date, :delivery_time
  has_many :order_items

  def delivery_date
    object.serving_datetime.to_date
  end

  def delivery_time
    object.serving_datetime.strftime("%I:%M%p")
  end

end
