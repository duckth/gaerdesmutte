class AddI18nFields < ActiveRecord::Migration[7.0]
  def change
    add_column :facts, :fact_i18n, :jsonb, default: {}
    add_column :species, :common_name_i18n, :jsonb, default: {}
  end
end
