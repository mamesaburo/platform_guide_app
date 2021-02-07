require 'rails_helper'

RSpec.describe Station, type: :model do
  before do
    @station = FactoryBot.build(:station)
  end

  describe '駅登録' do
    context '駅登録がうまくいくとき' do
      it "nameとimageが存在すれば登録できる" do
        expect(@station).to be_valid
      end
    end

    context '駅登録がうまくいかないとき' do
      it "nameが空だと登録できない" do
        @station.name = ""
        @station.valid?
        expect(@station.errors.full_messages).to include("Name can't be blank")
      end
      it "imageが空では登録できない" do
        @station.image = nil
        @station.valid?
        expect(@station.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
