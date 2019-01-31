class RsvpSerializer < ActiveModel::Serializer
  attributes :name, :email, :accept, :id, :song_request, :attendees
end
