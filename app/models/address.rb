class Address < ApplicationRecord
  validates :last_name,  presence: true
  validates :first_name, presence: true
  validates :post_code,  presence: true
  validates :address, presence: true
  belongs_to :customer
end
