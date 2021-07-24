class Item < ApplicationRecord
  validates :introduction, presence: true, length: { maximum: 200 }
  validates :price, presence: true
  validates :sale_status, presence: true
  has_many :cart_items, dependent: :destroy
  belongs_to :genre
  attachment :image
  enum sale_status: [:販売可, :販売不可]
end
