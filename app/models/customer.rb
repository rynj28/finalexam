#Creating an ActiveStorage for customer
class Customer < ApplicationRecord
  has_many :orders
  has_many :items
  has_many :products, through: :suppliers
  has_many :suppliers
  has_one_attached :avatar
  validate :acceptable_image

#Setting up Avatar
   def acceptable_image
     return unless avatar.attached?

#Checking if the image file size is too big. 
     unless avatar.blob.byte.size <= 1.megabyte
       errors.add(:avatar, "is too big")
     end

#Image file types that are only allowed to be uploaded.
     acceptable_types = ["image/jpeg", "image/png"]
     unless acceptable_types.include?(avatar.content_type)
     end
   end

#Details of the customers  
  def full_name
    "#{first_name} #{last_name}"
  end
end
