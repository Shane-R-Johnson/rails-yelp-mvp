class RenamePhoneToRestaurants < ActiveRecord::Migration[5.2]

  def change
    rename_column :restaurants, :phone, :phone_number
    remove_column :restaurants, :number
  end
end
