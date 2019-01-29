class Rsvp < ActiveRecord::Base
  validates :attendees, :accept, :presence => true
end
