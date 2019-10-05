class ClashesController < ApplicationController
  def show
    render locals: {
        attackers: Unit.all.reject{|u| u.attacks.blank?},
        defenders: Unit.all,
        operation: method(:damage)
    }
  end

  private
    def damage(attacker, attack, defender)
      attack.attack - defender.armor
    end
end
