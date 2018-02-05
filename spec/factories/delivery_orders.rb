FactoryBot.define do
  factory :delivery_order do
    sequence(:order_id) {|n| 'G012' + n.to_s}
    serving_datetime Faker::Time.forward(1, :morning)
  end
end
