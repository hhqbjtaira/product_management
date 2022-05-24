require 'rails_helper'

RSpec.describe Product, type: :model do
  before do 
    @product = build(:product)
  end

  describe 'バリデーション' do
    it 'category_idとnameとdescriptionの値が設定されていること' do
      expect(@product.valid?).to eq(true)
    end

    it 'category_idが空ではないこと' do
      @product.category_id = ''
      expect(@product.valid?).to eq(false)
    end

    it 'nameが空ではないこと' do
      @product.name = ''
      expect(@product.valid?).to eq(false)
    end

    it 'descriptionが空ではないこと' do
      @product.description = ''
      expect(@product.valid?).to eq(false)
    end

    it "外部キーがなければ登録できないこと" do
      article = Product.new(category_id: nil)
      article.valid?
      expect(article.errors[:category_id]).to include("can't be blank")
    end
  end


end  