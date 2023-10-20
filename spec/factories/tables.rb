FactoryBot.define do
  factory :table do
    title { Faker::Creature::Animal.name }
    memo { Faker::Fantasy::Tolkien.character }
  end
end
