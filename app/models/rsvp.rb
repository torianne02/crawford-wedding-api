class Rsvp < ActiveRecord::Base
  validates :attendees, :presence => true
end
