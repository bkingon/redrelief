# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :need do
    name "MyString"
    description "MyString"
    quantity 1
    project_id 1
    donation_id 1
  end
end
