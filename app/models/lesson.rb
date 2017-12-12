class Lesson < ApplicationRecord
	has_many :instructed_classes
	has_many :teachers, through: :instructed_classes
end
