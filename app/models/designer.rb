class Designer < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :products, dependent: :destroy
end
