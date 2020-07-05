class AddCoordinatesToSurfboards < ActiveRecord::Migration[6.0]
  def change
    add_column :surfboards, :latitude, :float
    add_column :surfboards, :longitude, :float
  end
end
