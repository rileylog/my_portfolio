# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    subject { Faker::HipsterIpsum.phrase }
    body { Faker::DizzleIpsum.paragraph }
    author { Faker::Name.first_name }
  end
end
