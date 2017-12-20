class Seat < ApplicationRecord
	has_many :show_seatings
  has_many :shows, through: :show_seating
end
