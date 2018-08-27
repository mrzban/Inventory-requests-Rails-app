class Inventory < ApplicationRecord
  # belongs_to :user
  validates :content, length: { maximum: 400 },
              presence: true
end
