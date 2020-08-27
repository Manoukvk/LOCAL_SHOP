class Designer < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :products
  has_one_attached :photo
end
