class DeliveryOrderSerializer < ActiveModel::Serializer
  attributes :order_id, :delivery_date, :delivery_time
  has_many :order_items

  def delivery_date
    object.serving_datetime.to_date
  end

  def delivery_time
    object.serving_datetime.strftime('%I:%M%p') + "\u2014" + (object.serving_datetime + 1800).strftime('%I:%M%p')
  end
end
