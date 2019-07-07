class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :rant, foreign_key: true
      t.text :description
      t.integer :like
      t.integer :unlike
      t.integer :inapropiate

      t.timestamps
    end
  end
end
