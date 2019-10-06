FactoryBot.define do
  factory :race do
    name { 'Zergs' }

    initialize_with { Race.find_or_create_by!(name: name) }
  end
end
