class CreateRants < ActiveRecord::Migration[5.2]
  def change
    create_table :rants do |t|
      t.references :user, foreign_key: true
      t.references :geofence, foreign_key: true
      t.string :title
      t.text :description
      t.integer :like
      t.integer :unlike
      t.string :status
      t.integer :inapropiate
      t.boolean :visibility

      t.timestamps
    end
  end
end
