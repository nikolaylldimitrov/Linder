class Profile < ApplicationRecord
  belongs_to :user 
  has_one_attached :image

  validates :gender ,inclusion:{in:%w[m f]}
  validates :matching_gender,inclusion:{in:%w[m f]}
end