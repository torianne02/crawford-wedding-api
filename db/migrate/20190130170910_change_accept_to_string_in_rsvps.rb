class ChangeAcceptToStringInRsvps < ActiveRecord::Migration[5.2]
  def change
    change_column :rsvps, :accept, :string
  end
end
