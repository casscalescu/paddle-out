class AddLocationToSurfboards < ActiveRecord::Migration[6.0]
  def change
    add_column :surfboards, :location, :string
  end
end
