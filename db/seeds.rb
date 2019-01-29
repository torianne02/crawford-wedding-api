# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rsvp.create(name: 'Malinda Flu', email: 'mflu@aol.com', accept: true, attendees: 2, song_request: 'Something Like This - The Chainsmokers')
Rsvp.create(name: 'Daniel Flu', email: 'dflu@aol.com', accept: true, attendees: 3, song_request: 'High - Alison Wonderland')
Rsvp.create(name: 'Dee Leebove', email: 'deelee@aol.com', accept: true, attendees: 2, song_request: 'You - Galantis')
Rsvp.create(name: 'Georgie Mitch', email: 'gmitch@aol.com', accept: true, attendees: 3, song_request: 'Happens Like That - Granger Smith')
Rsvp.create(name: 'Donna Wright', email: 'dwright@aol.com', accept: false, attendees: 0, song_request: '')
