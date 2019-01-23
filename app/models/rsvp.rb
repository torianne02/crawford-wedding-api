class Rsvp < ActiveRecord::Base
  belongs_to :guest

  validates :attendees, :presence => true
end 
