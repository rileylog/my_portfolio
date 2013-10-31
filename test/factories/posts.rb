# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    subject "MyString"
    body "MyText"
    author "MyString"
  end
end
