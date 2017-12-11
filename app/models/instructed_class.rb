class InstructedClass < ApplicationRecord
  belongs_to :lesson
  belongs_to :teacher
  has_many :users, through: :enrollment
end
