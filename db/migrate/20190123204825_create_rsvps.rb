class CreateRsvps < ActiveRecord::Migration[5.2]
  def change
    create_table :rsvps do |t|
      t.integer :attendees
      t.string :song_request
      t.integer :guest_id
    end
  end
end
