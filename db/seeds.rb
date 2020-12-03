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

song3 = Song.create!(
    title: "Gap Nhung Khong O Lai",
    artist: "Hien Ho",
    user_id: admin.id,
    genres:[Genre.find(1)]
    # source: File.read()
 )
 
song3.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Gap-Nhung-Khong-O-Lai-Hien-Ho-Vuong-Anh-Tu.mp3')),
    filename: 'Gap-Nhung-Khong-O-Lai-Hien-Ho-Vuong-Anh-Tu.mp3',
    content_type: 'audio/mpeg'
)
  
song3.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','hienho.jpg')),
    filename: 'hienho.jpg'
)

song4 = Song.create!(
    title: "Yeu Mot Nguoi Sao Buon Den The",
    artist: "Noo Phuoc Thinh",
    user_id: admin.id,
    genres:[Genre.find(1)]
    # source: File.read()
 )
 
song4.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Yeu-Mot-Nguoi-Sao-Buon-Den-The-Noo-Phuoc-Thinh.mp3')),
    filename: 'Yeu-Mot-Nguoi-Sao-Buon-Den-The-Noo-Phuoc-Thinh.mp3',
    content_type: 'audio/mpeg'
)
  
song4.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','noophuocthinh.jpg')),
    filename: 'noophuocthinh.jpg'
)

song5 = Song.create!(
    title: "Old Memory",
    artist: "Bruno Wen-li, Manack",
    user_id: admin.id,
    genres:[Genre.find(3)]
    # source: File.read()
 )
 
song5.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'OldMemoryYosugaNoSora-DangCapNha_4bp6h.mp3')),
    filename: 'OldMemoryYosugaNoSora-DangCapNha_4bp6h.mp3',
    content_type: 'audio/mpeg'
)
  
song5.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','download.jpg')),
    filename: 'download.jpg'
)

song6 = Song.create!(
    title: "Mary's Boy Child",
    artist: "Boney M",
    user_id: admin.id,
    genres:[Genre.find(1)]
    # source: File.read()
 )
 
song6.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'MarysBoyChild-VuDangQuocViet-6847046.mp3')),
    filename: 'MarysBoyChild-VuDangQuocViet-6847046.mp3',
    content_type: 'audio/mpeg'
)
  
song6.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','R-9595104-1510483871-6296.jpeg.jpg')),
    filename: 'R-9595104-1510483871-6296.jpeg.jpg'
)

song7 = Song.create!(
    title: "Phi Thăng",
    artist: "Dương Bỉnh Âm",
    user_id: admin.id,
    genres:[Genre.find(1)]
    # source: File.read()
 )
 
song7.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'PhiThangThienQuanTuPhucOst-DuongBinhAmYangBingYin-6844052.mp3')),
    filename: 'PhiThangThienQuanTuPhucOst-DuongBinhAmYangBingYin-6844052.mp3',
    content_type: 'audio/mpeg'
)
  
song7.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','PhiThangQuyet.jpg')),
    filename: 'PhiThangQuyet.jpg'
)

song8 = Song.create!(
    title: "Em Đang Ép Anh",
    artist: "Phúc Pin, Quân Đao, KindyA",
    user_id: admin.id,
    genres:[Genre.find(2)]
    # source: File.read()
 )
 
song8.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Em-Dang-Ep-Anh-Phuc-Pin-Quan-Dao-KindyA.mp3')),
    filename: 'Em-Dang-Ep-Anh-Phuc-Pin-Quan-Dao-KindyA.mp3',
    content_type: 'audio/mpeg'
)
  
song8.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','maxresdefault.jpg')),
    filename: 'maxresdefault.jpg'
)

song9 = Song.create!(
    title: "Mua Chim En Bay",
    artist: "Anh Tho",
    user_id: admin.id,
    genres:[Genre.find(4)]
    # source: File.read()
 )
 
song9.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Mua-Chim-En-Bay-Anh-Tho.mp3')),
    filename: 'Mua-Chim-En-Bay-Anh-Tho.mp3',
    content_type: 'audio/mpeg'
)
  
song9.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','fb2d90a028c239e6aa27cc3c99981631.png')),
    filename: 'fb2d90a028c239e6aa27cc3c99981631.png'
)

song10 = Song.create!(
    title: "La Traviata",
    artist: "Guiseppe Verdi",
    user_id: admin.id,
    genres:[Genre.find(5)]
    # source: File.read()
 )
 
song10.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'LaTraviata-AnhTho_3z4cm.mp3')),
    filename: 'LaTraviata-AnhTho_3z4cm.mp3',
    content_type: 'audio/mpeg'
)
  
song10.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','201124_nhachat_1.jpg')),
    filename: '201124_nhachat_1.jpg'
)

song11 = Song.create!(
    title: "Vi Ta Yeu Xa",
    artist: "Andykiz ft. RainTee",
    user_id: admin.id,
    genres:[Genre.find(2)]
    # source: File.read()
 )
 
song11.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'Vi-Ta-Yeu-Xa-Andykiz-ft-RainTee.mp3')),
    filename: 'Vi-Ta-Yeu-Xa-Andykiz-ft-RainTee.mp3',
    content_type: 'audio/mpeg'
)
  
song11.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','artworks-000470680176-nb4ilr-t500x500.jpg')),
    filename: 'artworks-000470680176-nb4ilr-t500x500.jpg'
)

song12 = Song.create!(
    title: "Lost My Pieces",
    artist: "Toradora",
    user_id: admin.id,
    genres:[Genre.find(3)]
    # source: File.read()
 )
 
song12.source.attach(
    io: File.open(Rails.root.join('public','mp3', 'LostMyPiecesToradoraOST-Toradora_3dek9.mp3')),
    filename: 'LostMyPiecesToradoraOST-Toradora_3dek9.mp3',
    content_type: 'audio/mpeg'
)
  
song12.image.attach(
    io: File.open(Rails.root.join('public', 'avatar','maxresdefault (1).jpg')),
    filename: 'maxresdefault (1).jpg'
)

