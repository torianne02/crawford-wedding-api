class RemoveAcceptFromRsvps < ActiveRecord::Migration[5.2]
  def change
    remove_column :rsvps, :accept, :boolean
  end
end
