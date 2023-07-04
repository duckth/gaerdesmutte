class Photo < ApplicationRecord
  belongs_to :species
  has_one_attached :blob
end
