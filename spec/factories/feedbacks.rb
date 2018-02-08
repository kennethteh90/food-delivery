FactoryBot.define do
  factory :feedback do
    ratable_id 1
    ratable_type "MyString"
    rating 1
    comment "MyString"
  end
end
