class Customer < ApplicationRecord
  has_many :orders
  has_many :items
  has_many :products, : :suppliers
  has_many :suppliers
  has_one_attached :avatar
  
  def full_name
    "#{first_name} #{last_name}"
end
