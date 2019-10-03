class Unit < ApplicationRecord
  belongs_to :race
  has_many :attacks, dependent: :destroy
  accepts_nested_attributes_for :attacks, allow_destroy: true

  def dps(attack, attack_upgrade_level)
    (attack[:attack] + attack[:attack_upgrade] * attack_upgrade_level) * attack[:attack_count] / attack[:cooldown]
  end
end
