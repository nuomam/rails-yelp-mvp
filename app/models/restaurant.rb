class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, format: { with: /0(1|2|3|4|5|6|7)(\s*\d{2}){4}/,
    message: "%{value} is not a valid phone number" }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }
end
