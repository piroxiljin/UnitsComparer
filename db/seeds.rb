# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Race.create([{name: 'Zerg'}, {name: 'Terran'}, {name: 'Protoss'}])

ScAttribute.create([
    {attr_type: :type, short: 'Bio', name: 'Biological'},
    {attr_type: :type, short: 'Mech', name: 'Mechanical'},
    {attr_type: :armor, short: 'A', name: 'Armored'},
    {attr_type: :armor, short: 'L', name: 'Light'},
    {attr_type: :attack, short: 'Melee', name: 'Melee'},
    {attr_type: :attack, short: 'Ranged', name: 'Ranged'},
    {attr_type: :movement, short: 'A', name: 'Air'},
    {attr_type: :movement, short: 'G', name: 'Ground'},
    {attr_type: :special, short: 'Detector', name: 'Detector'},
    {attr_type: :special, short: 'Heroic', name: 'Heroic'},
    {attr_type: :special, short: 'Mas', name: 'Massive'},
    {attr_type: :special, short: 'Psi', name: 'Psionic'},
    {attr_type: :special, short: 'S', name: 'Structure'}
])

AttackType.create([
    {name: 'Instant', short: '-'},
    {name: 'Splash', short: 'S'},
    {name: 'Projectile', short: 'P'},
    {name: 'Linear/Lined', short: 'L'},
    {name: 'Bounce', short: 'B'}
])
