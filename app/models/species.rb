class Species < ApplicationRecord
  extend Mobility

  translates :common_name, column_suffix: '_i18n'
end
