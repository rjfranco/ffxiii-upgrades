# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weapon do
    name "MyString"
    min_level 1
    max_level 1
    max_strength 1
    max_magic 1
    bonus "MyString"
    base_exp 1
    increment 1
    buy 1
    sell 1
  end
end
