class CreateSuperheros < ActiveRecord::Migration[5.2]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :superpower
      t.string :location
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
