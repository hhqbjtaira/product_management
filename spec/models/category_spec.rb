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
    let!(:product) { build(:product, category_id: category.id) }

    # test_postを作成し、空欄での登録ができるか確認します。
    subject { test_product.valid? }
    let(:test_product) { product }
    
    context 'nameカラム' do
      it '空欄でないこと' do
        test_post.title = ''
        is_expected.to eq false;
      end

      # it do
      #   expect(subject).to be_valid
      # end
    end


  end  
end
