class DropGuestIdFromRsvps < ActiveRecord::Migration[5.2]
  def change
    remove_column :rsvps, :guest_id, :integer
  end
end
