class List < ApplicationRecord
  has_many :names, dependent: :destroy
  validates :uid, presence: true, uniqueness: true
end
