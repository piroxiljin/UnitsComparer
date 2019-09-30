class ChangeDefaultValues < ActiveRecord::Migration[5.2]
  def change
    change_column_default :units, :name, {from: :nil, to: 'Unit'}
    change_column_default :units, :supply, {from: :nil, to: 1}
    change_column_default :units, :minerals, {from: :nil, to: 50}
    change_column_default :units, :gas, {from: :nil, to: 0}
    change_column_default :units, :build_time, {from: :nil, to: 12}
    change_column_default :units, :size, {from: nil, to: 0.75}
    change_column_default :units, :cargo, {from: nil, to: 1}
    change_column_default :units, :armor, {from: nil, to: 0}
    change_column_default :units, :armor_upgrade, {from: nil, to: 1}
    change_column_default :units, :health, {from: nil, to: 45}
    change_column_default :units, :shield, {from: nil, to: 0}
  end
end
