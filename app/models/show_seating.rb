class ShowSeating < ApplicationRecord
  belongs_to :seat
  belongs_to :show
end
