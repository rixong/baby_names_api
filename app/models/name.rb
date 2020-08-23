class Name < ApplicationRecord
  belongs_to :list
  validates :name, presence: true, uniqueness: true
end
