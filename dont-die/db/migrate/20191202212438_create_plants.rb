class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.datetime :dob
      t.references :species, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
