FactoryBot.define do
  factory :attack_type do
    name { 'Attack' }
    short { 'A' }

    initialize_with { AttackType.find_or_create_by!(name: name) }
  end
end
