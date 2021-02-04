class Coinlocker < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '前方' },
    { id: 2, name: '中央' },
    { id: 3, name: '後方' },
    { id: 4, name: '前方・中央' },
    { id: 5, name: '前方・後方' },
    { id: 6, name: '中央・後方' },
    { id: 7, name: '前方・中央・後方' }
  ]

  include ActiveHash::Associations
  has_many :platforms
end
