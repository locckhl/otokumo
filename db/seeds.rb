# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create!(
    email: "admin@admin.com",
    name: "admin",
    age: 21,
    password: "admin1",
    password_confirmation: "admin1",
    isAdmin: true
)


song = Song.create!(
    title: "Am Tham Ben Em2",
    artist: "Son Tung",
    user_id: admin.id
    # source: File.read()
 )
 
song.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Am Tham Ben Em - Son Tung M- TP [320kbps_MP3].mp3')),
    filename: 'Am Tham Ben Em - Son Tung M- TP [320kbps_MP3].mp3',
    content_type: 'audio/mpeg'
)
  
song.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','ATBE.jpg')),
    filename: 'ATBE.jpg'
)