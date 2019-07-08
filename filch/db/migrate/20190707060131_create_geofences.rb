class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.string :name
      t.string :address
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps
    end
  end
end
