class Teacher < ApplicationRecord
	has_many :instructed_classes
	has_many :lessons, through: :instructed_classes
end
