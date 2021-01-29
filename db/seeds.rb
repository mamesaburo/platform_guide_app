# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nagoya = Station.find_or_create_by(id: 1, name: '名古屋')
  nagoya.image.attach(io: File.open('public/images/jr_nagoya.jpg'), filename: 'jr_nagoya.jpg')
meitetsu = Station.find_or_create_by(id: 2, name: '名鉄名古屋')
  meitetsu.image.attach(io: File.open('public/images/m_nagoya.jpg'), filename: 'm_nagoya.jpg')