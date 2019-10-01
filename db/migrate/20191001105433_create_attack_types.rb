class CreateAttackTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :attack_types do |t|
      t.string :name
      t.string :short

      t.timestamps
    end
  end
end
