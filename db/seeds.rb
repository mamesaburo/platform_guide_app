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

  Platform.find_or_create_by(number: 1, elevator_id: 0, escalator_id: 0, toilet_id: 0, coinlocker_id: 0, station_id: 1)
  Platform.find_or_create_by(number: 2, elevator_id: 5, escalator_id: 3, toilet_id: 3, coinlocker_id: 5, station_id: 1)
  Platform.find_or_create_by(number: 3, elevator_id: 5, escalator_id: 3, toilet_id: 3, coinlocker_id: 5, station_id: 1)
  Platform.find_or_create_by(number: 4, elevator_id: 1, escalator_id: 1, toilet_id: 1, coinlocker_id: 1, station_id: 1)
  Platform.find_or_create_by(number: 5, elevator_id: 1, escalator_id: 1, toilet_id: 1, coinlocker_id: 1, station_id: 1)
  Platform.find_or_create_by(number: 6, elevator_id: 1, escalator_id: 1, toilet_id: 4, coinlocker_id: 1, station_id: 1)
  Platform.find_or_create_by(number: 7, elevator_id: 4, escalator_id: 1, toilet_id: 2, coinlocker_id: 4, station_id: 1)
  Platform.find_or_create_by(number: 8, elevator_id: 4, escalator_id: 1, toilet_id: 2, coinlocker_id: 4, station_id: 1)
  Platform.find_or_create_by(number: 10, elevator_id: 4, escalator_id: 1, toilet_id: 2, coinlocker_id: 4, station_id: 1)
  Platform.find_or_create_by(number: 11, elevator_id: 1, escalator_id: 1, toilet_id: 2, coinlocker_id: 2, station_id: 1)
  Platform.find_or_create_by(number: 12, elevator_id: 1, escalator_id: 1, toilet_id: 2, coinlocker_id: 2, station_id: 1)
  Platform.find_or_create_by(number: 13, elevator_id: 1, escalator_id: 1, toilet_id: 2, coinlocker_id: 2, station_id: 1)
  Platform.find_or_create_by(number: 1, elevator_id: 2, escalator_id: 0, toilet_id: 2, coinlocker_id: 6, station_id: 2)
  Platform.find_or_create_by(number: 2, elevator_id: 2, escalator_id: 2, toilet_id: 2, coinlocker_id: 2, station_id: 2)
  Platform.find_or_create_by(number: 3, elevator_id: 2, escalator_id: 2, toilet_id: 2, coinlocker_id: 2, station_id: 2)
  Platform.find_or_create_by(number: 4, elevator_id: 2, escalator_id: 0, toilet_id: 2, coinlocker_id: 2, station_id: 2)