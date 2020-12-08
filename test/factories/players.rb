FactoryBot.define do
  factory :player do
    name { "#{[Faker::Creature::Cat.name, Faker::Creature::Dog.name].sample} #{Faker::Name.last_name}" }
    number { rand(0..99) }
    team
  end
end
