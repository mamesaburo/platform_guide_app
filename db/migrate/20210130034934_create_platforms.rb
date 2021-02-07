class CreatePlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :platforms do |t|
      t.integer :number,        null: false
      t.integer :elevator_id,   null: false
      t.integer :escalator_id,  null: false
      t.integer :toilet_id,     null: false
      t.integer :coinlocker_id, null: false
      t.references :station,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
