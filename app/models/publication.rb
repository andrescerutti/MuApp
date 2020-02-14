class Publication < ApplicationRecord
  validates :categoria, presence: true
  has_many :operations, dependent: :destroy
end
