# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donation do
    donation_id 1
    project_id 1
    user_id "MyString"
    procurement "MyString"
    description "MyString"
    quantity 1
  end
end
