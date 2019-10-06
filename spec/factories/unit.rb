FactoryBot.define do
  factory :unit do
    sequence(:name) { |n| "unit-#{n + 1}" }
    supply { 1 }
    minerals { 50 }
    gas { 0 }
    build_time { 8 }
    size { 0.75 }
    cargo { 1 }
    armor { 0 }
    armor_upgrade { 1 }
    health { 45 }
    shield { 0 }
    sc_attributes { [] }
    cooldown { 1 }
    speed { 2 }
    sight { 3 }
    sight_upgrade { 4 }
    air { false }
    race
  end
end
