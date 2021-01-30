class Escalator < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '進行方向 前' },
    { id: 2, name: '中央' },
    { id: 3, name: '進行方向 後' },
    { id: 4, name: '進行方向 前・中央' },
    { id: 5, name: '進行方向 前・進行方向 後' },
    { id: 6, name: '中央・進行方向 後' },
    { id: 7, name: '進行方向 前・中央・進行方向 後' }
  ]

  include ActiveHash::Associations
  has_many :platforms
end
