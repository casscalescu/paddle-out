class AddCategoryToSurfboards < ActiveRecord::Migration[6.0]
  def change
    add_column :surfboards, :category, :string
  end
end
