FactoryBot.define do
  factory :station do
    name {"栄"}

    after(:build) do |station|
      station.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
      station.platforms << FactoryBot.build(:platform)
    end
  end
end