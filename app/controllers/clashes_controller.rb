class ClashesController < ApplicationController
  def show
    render locals: {
        attackers: Unit.all.reject{|u| u.attacks.blank?},
        defenders: Unit.all,
        attack_upgrade_levels: [0, 1, 2, 3],
        armor_upgrade_levels: [0, 1, 2, 3],
        operation: method(:damage)
    }
  end

  private
    def damage(attacker, attack, attack_upgrade_level, defender, armor_upgrade_level)
      attacker.attack(attack, attack_upgrade_level, defender, armor_upgrade_level)
    end
end
