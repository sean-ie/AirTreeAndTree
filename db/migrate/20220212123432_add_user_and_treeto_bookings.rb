class AddUserAndTreetoBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :user
    add_reference :bookings, :tree
  end
end
