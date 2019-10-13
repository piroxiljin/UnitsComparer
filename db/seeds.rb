# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Race.delete_all()
races = Race.create([{name: 'Zerg'}, {name: 'Terran'}, {name: 'Protoss'}])

ScAttribute.delete_all()
sc_attributes = ScAttribute.create([
  {attr_type: :type, short: 'Bio', name: 'Biological'},
  {attr_type: :type, short: 'Mech', name: 'Mechanical'},
  {attr_type: :armor, short: 'A', name: 'Armored'},
  {attr_type: :armor, short: 'L', name: 'Light'},
  {attr_type: :attack, short: 'Melee', name: 'Melee'},
  {attr_type: :attack, short: 'Ranged', name: 'Ranged'},
  {attr_type: :movement, short: 'Air', name: 'Air'},
  {attr_type: :movement, short: 'G', name: 'Ground'},
  {attr_type: :special, short: 'Detector', name: 'Detector'},
  {attr_type: :special, short: 'Heroic', name: 'Heroic'},
  {attr_type: :special, short: 'Mas', name: 'Massive'},
  {attr_type: :special, short: 'Psi', name: 'Psionic'},
  {attr_type: :special, short: 'S', name: 'Structure'}
])

AttackType.delete_all()
attack_types = AttackType.create([
  {name: 'Instant', short: '-'},
  {name: 'Splash', short: 'S'},
  {name: 'Projectile', short: 'P'},
  {name: 'Linear/Lined', short: 'L'},
  {name: 'Bounce', short: 'B'}
])

Unit.delete_all()
Unit.create( name: 'SCV',         supply: 1, minerals:  50, gas:   0, build_time: 12, size: 0.750, cargo:  1, armor:  0, armor_upgrade: 1, health:  45, shield:  0, sc_attributes: ['Bio', 'Mech', 'L'], speed: 3.94 , sight:  8, sight_upgrade: 0, race: Race.find_by!(name: 'Terran'),  attacks: [Attack.create({ air: false, ground:  true, melee: true,  attack:  5, attack_upgrade: 0, attack_count: 1, cooldown: 1.07 ,           attack_type: AttackType.find_by!(short: '-') })] )
Unit.create( name: 'MULE',        supply: 0, minerals:   0, gas:   0, build_time:  0, size: 0.750, cargo: -1, armor:  0, armor_upgrade: 1, health:  60, shield:  0, sc_attributes: ['Mech', 'L'],        speed: 3.94 , sight:  8, sight_upgrade: 0, race: Race.find_by!(name: 'Terran') )
Unit.create( name: 'Marine',      supply: 1, minerals:  50, gas:   0, build_time: 18, size: 0.750, cargo:  1, armor:  0, armor_upgrade: 1, health:  45, shield:  0, sc_attributes: ['Bio', 'L'],         speed: 3.15 , sight:  9, sight_upgrade: 0, race: Race.find_by!(name: 'Terran'),  attacks: [Attack.create({ air:  true, ground:  true, melee: false, attack:  6, attack_upgrade: 1, attack_count: 1, cooldown: 0.61 , range: 5, attack_type: AttackType.find_by!(short: '-') })] )
Unit.create( name: 'Marauder',    supply: 2, minerals: 100, gas:  25, build_time: 21, size: 1.125, cargo:  2, armor:  1, armor_upgrade: 1, health: 125, shield:  0, sc_attributes: ['Bio', 'A'],         speed: 3.15 , sight: 10, sight_upgrade: 0, race: Race.find_by!(name: 'Terran'),  attacks: [Attack.create({ air: false, ground:  true, melee: false, attack:  5, attack_upgrade: 1, attack_count: 2, cooldown: 1.07 , range: 6, attack_type: AttackType.find_by!(short: 'P') })] )
Unit.create( name: 'Ghost',       supply: 2, minerals: 150, gas: 125, build_time: 29, size: 0.750, cargo:  2, armor:  0, armor_upgrade: 1, health: 100, shield:  0, sc_attributes: ['Bio', 'Psi'],       speed: 3.94 , sight: 11, sight_upgrade: 0, race: Race.find_by!(name: 'Terran'),  attacks: [Attack.create({ air:  true, ground:  true, melee: false, attack: 10, attack_upgrade: 1, attack_count: 1, cooldown: 1.07 , range: 6, attack_type: AttackType.find_by!(short: '-') })] )

Unit.create( name: 'Larva',       supply: 0, minerals:   0, gas:   0, build_time: 11, size: 0.250, cargo: -1, armor: 10, armor_upgrade: 0, health:  25, shield:  0, sc_attributes: ['Bio', 'L'],         speed: 0.79 , sight:  5, sight_upgrade: 0, race: Race.find_by!(name: 'Zerg') )
Unit.create( name: 'Drone',       supply: 1, minerals:  50, gas:   0, build_time: 12, size: 0.750, cargo:  1, armor:  0, armor_upgrade: 1, health:  40, shield:  0, sc_attributes: ['Bio', 'L'],         speed: 3.94 , sight:  8, sight_upgrade: 0, race: Race.find_by!(name: 'Zerg'),    attacks: [Attack.create({ air: false, ground:  true, melee:  true, attack:  5, attack_upgrade: 0, attack_count: 1, cooldown: 1.07 ,           attack_type: AttackType.find_by!(short: '-') })] )
Unit.create( name: 'Queen',       supply: 2, minerals: 150, gas:   0, build_time: 36, size: 1.750, cargo:  2, armor:  1, armor_upgrade: 1, health: 175, shield:  0, sc_attributes: ['Bio', 'Psi'],       speed: 1.31 , sight:  9, sight_upgrade: 0, race: Race.find_by!(name: 'Zerg'),    attacks: [Attack.create({ air: false, ground:  true, melee: false, attack:  4, attack_upgrade: 1, attack_count: 2, cooldown: 0.71 , range: 5, attack_type: AttackType.find_by!(short: 'P') }),
                                                                                                                                                                                                                                                                                                    Attack.create({ air:  true, ground: false, melee: false, attack:  9, attack_upgrade: 1, attack_count: 1, cooldown: 0.71 , range: 8, attack_type: AttackType.find_by!(short: 'P') })] )
Unit.create( name: 'Zergling',    supply: 1, minerals:  25, gas:   0, build_time: 17, size: 0.750, cargo:  1, armor:  0, armor_upgrade: 1, health:  35, shield:  0, sc_attributes: ['Bio', 'L'],         speed: 4.13 , sight:  8, sight_upgrade: 0, race: Race.find_by!(name: 'Zerg'),    attacks: [Attack.create({ air: false, ground:  true, melee:  true, attack:  5, attack_upgrade: 1, attack_count: 1, cooldown: 0.497,           attack_type: AttackType.find_by!(short: '-') })] )
Unit.create( name: 'Overlord',    supply: 0, minerals: 100, gas:   0, build_time: 18, size: 2.000, cargo: -1, armor:  0, armor_upgrade: 1, health: 200, shield:  0, sc_attributes: ['Bio', 'A', 'Air'],  speed: 0.902, sight:  8, sight_upgrade: 0, race: Race.find_by!(name: 'Zerg') )

Unit.create( name: 'Probe',       supply: 1, minerals:  50, gas:   0, build_time: 12, size: 0.750, cargo:  1, armor:  0, armor_upgrade: 1, health:  20, shield: 20, sc_attributes: ['Mech', 'L'],        speed: 3.94 , sight:  8, sight_upgrade: 0, race: Race.find_by!(name: 'Protoss'), attacks: [Attack.create({ air: false, ground:  true, melee:  true, attack:  5, attack_upgrade: 0, attack_count: 1, cooldown: 1.07 ,           attack_type: AttackType.find_by!(short: '-') })] )
Unit.create( name: 'Zealot',      supply: 2, minerals: 100, gas:   0, build_time: 27, size: 1.000, cargo:  2, armor:  1, armor_upgrade: 1, health: 100, shield: 50, sc_attributes: ['Bio', 'L'],         speed: 3.15 , sight:  9, sight_upgrade: 0, race: Race.find_by!(name: 'Protoss'), attacks: [Attack.create({ air: false, ground:  true, melee:  true, attack:  6, attack_upgrade: 1, attack_count: 2, cooldown: 0.86 ,           attack_type: AttackType.find_by!(short: '-') })] )

