# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :region do
    region_id 1
    country "MyString"
    province "MyString"
    town "MyString"
    area "MyString"
  end
end
