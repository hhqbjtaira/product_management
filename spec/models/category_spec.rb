# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'バリデーションのテスト' do
    # factoriesで作成したダミーデータを使用します。
    let(:category) { FactoryBot.create(:category) }
    # let!(:product) { build(:product, category_id: category.id) }

    # test_categoryを作成し、空欄での登録ができるか確認します。
    subject { test_category.valid? }
    let(:test_category) { category }
    
    context 'nameカラム' do
      it '空欄でないこと' do
        test_category.name = ''
        is_expected.to eq false;
      end
    end

    context '一意の制約を確かめる' do
      before do
        @category = FactoryBot.build(:category)
      end

      it '同じカテゴリーは登録できないこと' do
        @category.save 
        another_category = FactoryBot.build(:category) 
        another_category.name = @category.name
        another_category.valid?
        expect(another_category.errors.full_messages).to include("このカテゴリーはすでに存在します")
      end
    end

  end  
end
