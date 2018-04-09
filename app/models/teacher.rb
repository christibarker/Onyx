class Teacher < ApplicationRecord
	
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
	has_many :instructed_classes, dependent: :destroy
	has_many :lessons, through: :instructed_classes
	belongs_to :user
end
