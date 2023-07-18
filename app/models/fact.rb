class Fact < ApplicationRecord
  extend Mobility

  belongs_to :species
  has_many :photos, through: :species

  translates :fact, column_suffix: "_i18n"

  scope :ordered, -> { order(id: :desc) }
end
