class AddCoordinatesToSuperheros < ActiveRecord::Migration[5.2]
  def change
    add_column :superheros, :latitude, :float
    add_column :superheros, :longitude, :float
  end
end
