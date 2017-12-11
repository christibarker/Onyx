class Lesson < ApplicationRecord
	has_many :teachers, through: :instructed_classes
end
