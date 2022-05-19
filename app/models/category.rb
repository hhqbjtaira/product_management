class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  with_options presence: true do
    validates :name
  end
end
