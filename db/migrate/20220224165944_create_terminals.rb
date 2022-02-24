class CreateTerminals < ActiveRecord::Migration[7.0]
  def change
    create_table :terminals do |t|
      t.string :name
      t.string :code
      t.string :latitude
      t.string :longitude
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
