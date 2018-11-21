class AddPositionToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :position, :integer
  end
end
