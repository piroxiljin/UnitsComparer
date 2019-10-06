FactoryBot.define do
  factory :attack do
    attack_type
    unit
    sequence(:name) { |n| "attack-#{n+1}" }
    air { true }
    ground { true }
    melee { false }
    range { 5 }
    range_upgrade { 0 }
    attack { 10 }
    attack_upgrade { 1 }
    cooldown { 1.07 }
    attack_count { 1 }
  end
end
