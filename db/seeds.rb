# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.clean_with :truncation

10.times do
  Meal.create(name: Faker::Food.unique.dish, byline: Faker::Food.unique.ingredient)
end

for i in 1..5 do
  DeliveryOrder.create(order_id: 'G' + format('%.4d', (i + 120)), serving_datetime: Faker::Time.forward(1, :morning))
end

DeliveryOrder.all.each do |order|
  Faker::Number.between(1, 5).times do
    order.order_items.create(delivery_order_id: order.id, serving_date: order.serving_datetime, meal_id: Faker::Number.between(1, 10), quantity: Faker::Number.between(1, 5), unit_price: Faker::Number.between(100, 1000))
  end
end
