class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.references :user
      t.references :superhero
      t.boolean :status
      t.timestamps
    end
  end
end
