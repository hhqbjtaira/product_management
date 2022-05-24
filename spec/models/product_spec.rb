# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text(65535)      not null
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  before do 
    @product = build(:product)
  end

  describe 'バリデーション' do
    # factoriesで作成したダミーデータを使用します。
    # let(:product) { FactoryBot.create(:product) }

    # # test_categoryを作成し、空欄での登録ができるか確認します。
    # subject { test_product.valid? }
    # let(:test_product) { product }

    it 'category_idとnameとdescriptionの値が設定されていること' do
      expect(@product.valid?).to eq(false)
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

    # it "外部キーがなければ登録できないこと" do
    #   article = Product.new(category_id: nil)
    #   article.valid?
    #   expect(product.errors[:category_id]).to include("can't be blank")
    # end
    it "外部キーがなければ登録できないこと" do
      @product.category_id = ''
      article.valid?
      expect(product.errors[:category_id]).to include("can't be blank")
    end
  end


end  
