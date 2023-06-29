class Fact < ApplicationRecord
  extend Mobility

  belongs_to :species

  translates :fact, column_suffix: '_i18n'
end
