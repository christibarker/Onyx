class Show < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  

  has_many :show_seatings
  has_many :seats, through: :show_seatings
  accepts_nested_attributes_for :show_seatings
end
