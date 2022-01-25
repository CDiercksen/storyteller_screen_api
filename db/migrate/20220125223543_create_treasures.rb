class CreateTreasures < ActiveRecord::Migration[7.0]
  def change
    create_table :treasures do |t|

      t.timestamps
    end
  end
end
