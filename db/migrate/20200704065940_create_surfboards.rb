class CreateSurfboards < ActiveRecord::Migration[6.0]
  def change
    create_table :surfboards do |t|
      t.string :name
      t.string :brand
      t.float :price
      t.string :description
      t.float :deposit
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
