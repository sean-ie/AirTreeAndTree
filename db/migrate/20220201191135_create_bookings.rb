class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
     # t.string :datetime
      t.datetime :end_date
     # t.string :datetime

      t.timestamps
    end
  end
end
