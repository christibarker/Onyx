class Teacher < ApplicationRecord
	has_many :lessons, through: :instructed_classes
end
