class CreateAdventurers < ActiveRecord::Migration[7.0]
  def change
    create_table :adventurers do |t|
      t.string :name
      t.integer :armor_class
      t.integer :hit_point_maximum
      t.integer :spell_dc

      t.timestamps
    end
  end
end
