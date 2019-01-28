class AddColumnsToRsvps < ActiveRecord::Migration[5.2]
  def change
    add_column :rsvps, :name, :string
    add_column :rsvps, :email, :string
  end
end
