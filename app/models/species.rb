class Species < ApplicationRecord
  extend Mobility

  translates :common_name, column_suffix: '_i18n'

  has_many_attached :photos

  has_many :photos
  has_many :facts

  # def photo
  #   photos.first
  # end
end
