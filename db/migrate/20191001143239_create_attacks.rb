class CreateAttacks < ActiveRecord::Migration[5.2]
  def change
    change_column_default :attacks, :air, { from: nil, to: true }
    change_column_default :attacks, :ground, { from: nil, to: true }
    change_column_default :attacks, :melee, { from: nil, to: false }
    change_column_default :attacks, :range, { from: nil, to: 5 }
    change_column_default :attacks, :range_upgrade, { from: nil, to: 0 }
    change_column_default :attacks, :damage, { from: nil, to: 10 }
    change_column_default :attacks, :damage_upgrade, { from: nil, to: 1 }
    change_column_default :attacks, :cooldown, { from: nil, to: 1.07 }

    rename_column :attacks, :damage, :attack
    rename_column :attacks, :damage_upgrade, :attack_upgrade

    add_column :attacks, :attack_count, :integer, default: 1

    add_reference :attacks, :attack_type
  end
end

