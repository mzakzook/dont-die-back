class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :img_url
      t.string :name

      t.timestamps
    end
  end
end
