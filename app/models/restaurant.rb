class Restaurant < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ['Chinese', 'Japanese', 'Italian', 'French', 'Belgian'] }

  has_many :reviews, dependent: :destroy
end
