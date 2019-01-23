class Guest < ActiveRecord::Base
  has_one :rsvp
  # may need to use accepts_nested_attributes_for :rsvp 

  validates :name, :email, :presence => true
end
