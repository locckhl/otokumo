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
    age: 99,
    password: "123456",
    password_confirmation: "123456",
    isAdmin: true
)

genres = ['POP','RAP','ANISONG','CLASSIC','OPERA']
genres.each do |genre|
   Genre.create!(
        name:genre
    ) 
end

song1 = Song.create!(
    title: "Am Tham Ben Em",
    artist: "Son Tung",
    user_id: admin.id,
    genres:[Genre.find(1),Genre.find(2)]
    # source: File.read()
 )
 
song1.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Am Tham Ben Em - Son Tung M- TP [320kbps_MP3].mp3')),
    filename: 'Am Tham Ben Em - Son Tung M- TP [320kbps_MP3].mp3',
    content_type: 'audio/mpeg'
)
  
song1.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','ATBE.jpg')),
    filename: 'ATBE.jpg'
)

song2 = Song.create!(
    title: "Bay len nhe nu cuoi",
    artist: "Miu le",
    user_id: admin.id,
    genres:[Genre.find(1)]
    # source: File.read()
 )
 
song2.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Bay Len Nhe Nu Cuoi - Miu Le [320kbps_MP3].mp3')),
    filename: 'Bay Len Nhe Nu Cuoi - Miu Le [320kbps_MP3].mp3',
    content_type: 'audio/mpeg'
)
  
song2.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','miule.jpg')),
    filename: 'miule.jpg'
)

