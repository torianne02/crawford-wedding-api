class AddAcceptToRsvp < ActiveRecord::Migration[5.2]
  def change
    add_column :rsvps, :accept, :boolean
  end
end
