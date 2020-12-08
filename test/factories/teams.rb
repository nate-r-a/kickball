FactoryBot.define do
  factory :team do
    name { "#{Faker::Address.city} #{Faker::Creature::Animal.name.pluralize.capitalize}" }

    after(:create) do |team|
      create_list :player, 3, team: team
    end
  end
end
