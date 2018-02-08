class DeliveryOrderSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :delivery_date, :delivery_time, :feedback_submitted
  has_many :order_items

  def delivery_date
    object.serving_datetime.to_date
  end

  def delivery_time
    object.serving_datetime.strftime('%I:%M%p') + "\u2014" + (object.serving_datetime + 1800).strftime('%I:%M%p')
  end

  def feedback_submitted
    object.feedback ? true : false
  end

end
