class ChangeDefaultScAttributes < ActiveRecord::Migration[5.2]
  def change
    change_column_default :units, :sc_attributes, {from: :nil, to: '[]'}
  end
end
