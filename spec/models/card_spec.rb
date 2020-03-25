require 'rails_helper'

#クレカが登録してあれば購入できる
describe  Card do
  describe '#delete' do

    it "is invalid without a customer_id" do
      card = build(:card, customer_id: "")
      card.valid?
      expect(card.errors[:customer_id]).to include("can't be blank")
    end

    it "is invalid without an card_id" do
      card = build(:card, card_id: "")
      card.valid?
      expect(card.errors[:card_id]).to include("can't be blank")
    end
  end
end