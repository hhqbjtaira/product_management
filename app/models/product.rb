class Product < ApplicationRecord
  belongs_to :category_id

  with_options presence: true do
    validates :name
  end
end
