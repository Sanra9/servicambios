class AddCountryToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :country, :string
  end
end
