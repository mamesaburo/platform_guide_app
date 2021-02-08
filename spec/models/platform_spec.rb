require 'rails_helper'

RSpec.describe Platform, type: :model do
  before do
    @station = FactoryBot.build(:station)
    @platform = @station.platforms.first
  end

  describe 'プラットフォーム登録' do
    context 'プラットフォーム登録がうまくいくとき' do
      it "numberとelevator_id、escalator_idとtoilet_id、coinlocker_idとstation_idが存在すれば登録できる" do
        expect(@platform).to be_valid
      end
    end


    context 'プラットフォーム登録がうまくいかないとき' do
      it "numberが空だと登録できない" do
        @platform.number = ""
        @platform.valid?
        expect(@platform.errors.full_messages).to include("Number can't be blank")
      end
      it "elevator_idが空だと登録できない" do
        @platform.elevator_id = ""
        @platform.valid?
        expect(@platform.errors.full_messages).to include("Elevator can't be blank")
      end
      it "escalator_idが空だと登録できない" do
        @platform.escalator_id = ""
        @platform.valid?
        expect(@platform.errors.full_messages).to include("Escalator can't be blank")
      end
      it "toilet_idが空だと登録できない" do
        @platform.toilet_id = ""
        @platform.valid?
        expect(@platform.errors.full_messages).to include("Toilet can't be blank")
      end
      it "coinlocker_idが空だと登録できない" do
        @platform.coinlocker_id = ""
        @platform.valid?
        expect(@platform.errors.full_messages).to include("Coinlocker can't be blank")
      end
    end
  end
end