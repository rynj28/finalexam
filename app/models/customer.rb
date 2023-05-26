class Customer < ApplicationRecord
  has_many :orders
  has_many :items
  has_many :suppliers
  has_many :products, through: :suppliers
  has_one_attached :avatar
  validate :acceptable_image

   def acceptable_image
     return unless avatar.attached?

     unless avatar.blob.byte_size <= 1.megabyte
       errors.add(:avatar, "is too big")
     end

     acceptable_types = ["image/jpeg", "image/png"]
     unless acceptable_types.include?(avatar.content_type)
       errors.add(:avatar, "must be a JPEG or PNG")
     end
   end

  def full_name
    "#{first_name} #{last_name}"
  end
end
