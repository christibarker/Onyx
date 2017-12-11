class Enrollment < ApplicationRecord
  belongs_to :instructed_class
  belongs_to :user
end
