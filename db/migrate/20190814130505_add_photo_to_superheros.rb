class AddPhotoToSuperheros < ActiveRecord::Migration[5.2]
  def change
    add_column :superheros, :photo, :string
  end
end
