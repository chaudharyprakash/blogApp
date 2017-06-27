require 'faker'

FactoryGirl.define do
  factory :blog do |f|
    f.title ""    
    f.description { Faker::Name.last_name }
  end
end