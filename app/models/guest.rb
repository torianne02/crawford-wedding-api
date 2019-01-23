class Guest < ActiveRecord::Base
  has_one :rsvp
  accepts_nested_attributes_for :rsvp 

  validates :name, :email, :presence => true
end
