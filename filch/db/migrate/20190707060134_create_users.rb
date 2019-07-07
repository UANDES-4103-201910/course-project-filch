class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.references :geofence, foreign_key: true
      t.string :role
      t.string :uid
      t.string :provider
      t.string :sex
      t.text :bigraphy

      t.timestamps
    end
  end
end
