require 'rails_helper'

describe Review do
  describe '#create' do

    it "is invalid without a shopName" do
      review = build(:review, shopName: "")
      review.valid?
      expect(review.errors[:shopName]).to include()
    end

    it "is invalid without an menuName " do
      review = build(:review, menuName: "")
      review.valid?
      expect(review.errors[:menuName]).to include()
    end

    it "is invalid without an kind " do
      review = build(:review, kind: "")
      expect(review).to be_valid
    end

    it "is invalid without an situation " do
      review = build(:review, situation: "")
      expect(review).to be_valid
    end

    it "is invalid without an deliciousness " do
      review = build(:review, deliciousness: "")
      expect(review).to be_valid
    end

    it "is invalid without an costPerformance " do
      review = build(:review, costPerformance: "")
      expect(review).to be_valid
    end

    it "is invalid without an sweetness  " do
      review = build(:review, sweetness: "")
      expect(review).to be_valid
    end

    it "is invalid without an strongTaste " do
      review = build(:review, strongTaste: "")
      expect(review).to be_valid
    end

    it "is invalid without an Texture " do
      review = build(:review, Texture: "")
      expect(review).to be_valid
    end

    it "is invalid without an EaseOfEating " do
      review = build(:review, EaseOfEating: "")
      expect(review).to be_valid
    end

    it "is invalid without an volume " do
      review = build(:review, volume: "")
      expect(review).to be_valid
    end
    it "is invalid without an appearance " do
      review = build(:review, appearance: "")
      expect(review).to be_valid
    end

    it "is invalid without an balance " do
      review = build(:review, balance: "")
      expect(review).to be_valid
    end
    it "is invalid without an disagreement " do
      review = build(:review, disagreement: "")
      expect(review).to be_valid
    end

    it "is invalid without an group " do
      review = build(:review, group: "")
      expect(review).to be_valid
    end

    it "is invalid without an comment " do
      review = build(:review, comment: "")
      expect(review).to be_valid
    end

    it "is invalid without an user_id " do
      review = build(:review, user_id: "")
      review.valid?
      expect(review.errors[:user_id]).to include()
    end
  end
end