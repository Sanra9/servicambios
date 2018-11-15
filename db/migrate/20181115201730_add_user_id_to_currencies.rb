class AddUserIdToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :user_id, :integer
  end
end
