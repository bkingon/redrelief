# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    need_level 1
    manager_id 1
    region_id 1
    description "MyString"
    need_list 1
  end
end
