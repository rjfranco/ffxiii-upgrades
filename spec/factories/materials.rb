# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :material do
    name "MyString"
    buy 1
    sell 1
    store "MyString"
    exp 1
    multiplier 1
  end
end
