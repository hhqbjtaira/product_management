# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :products_id, dependent: :destroy
  with_options presence: true do
    validates :name, uniqueness: true
  end
end
