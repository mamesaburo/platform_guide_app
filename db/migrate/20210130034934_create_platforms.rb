class CreatePlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :platforms do |t|
      t.integer :number
      t.integer :elevator_id
      t.integer :escalator_id
      t.integer :toilet_id
      t.integer :coinlocker_id
      t.references :station, null: false, foreign_key: true
      t.timestamps
    end
  end
end
