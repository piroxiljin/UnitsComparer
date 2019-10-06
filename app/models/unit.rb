class Unit < ApplicationRecord
  belongs_to :race
  has_many :attacks, dependent: :destroy
  accepts_nested_attributes_for :attacks, allow_destroy: true

  def dps(attack, attack_upgrade_level)
    (attack[:attack] + attack[:attack_upgrade] * attack_upgrade_level) * attack[:attack_count] / attack[:cooldown]
  end

  def attack(attack, attack_upgrade_level, defender, armor_upgrade_level)
    defender_armor = defender[:armor] + defender[:armor_upgrade] * armor_upgrade_level
    if defender[:sc_attributes].include? "Air"
      if !attack.air
        return
      end
    else
      if !attack.ground
        return
      end
    end
    (attack[:attack] + attack[:attack_upgrade] * attack_upgrade_level - defender_armor) * attack[:attack_count]
  end
end
