class Product < ApplicationRecord
  belongs_to :category, foreign_key: :category_id
  with_options presence: true do
    validates :category_id, foreign_key: true
    validates :name
    validates :description
  end
end
