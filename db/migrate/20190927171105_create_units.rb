class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :sc_attributes do |t|
      t.string :attr_type
      t.string :short
      t.string :name
    end
    
    create_table :races do |t|
      t.string :name
    end

    create_table :units do |t|
      t.string :name
      t.integer :supply
      t.integer :minerals
      t.integer :gas
      t.integer :build_time
      t.float :size
      t.integer :cargo
      t.integer :armor
      t.integer :armor_upgrade
      t.integer :health
      t.integer :shield
      t.string :sc_attributes
      t.float :cooldown
      t.float :speed
      t.integer :sight
      t.integer :sight_upgrade
      t.boolean :air
      t.references :race, foreign_key: true

      t.timestamps
    end

    create_table :attacks do |t|
      t.string :name
      t.boolean :air
      t.boolean :ground
      t.boolean :melee
      t.integer :range
      t.integer :range_upgrade
      t.integer :damage
      t.integer :damage_upgrade
      t.float :cooldown
      t.references :unit, foreign_key: true

      t.timestamps
    end

    create_table :bonuses do |t|
      t.string :sc_attribute
      t.boolean :air
      t.boolean :ground
      t.integer :damage
      t.integer :damage_upgrade
      t.integer :shield_damage
      t.integer :health_decrease
      t.references :attack, foreign_key: true

      t.timestamps
    end
  end
end
