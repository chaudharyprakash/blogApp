#<User id: nil, uid: nil, provider: nil, token: nil, nickname: nil, name: nil, email: nil, image_url: nil>
require 'faker'

FactoryGirl.define do
  factory :user do |c|
    provider Faker::Name.last_name
    token {rand(1..10)}
    nickname Faker::Name.first_name
    name Faker::Name.name
    email Faker::Internet.email
  end
end