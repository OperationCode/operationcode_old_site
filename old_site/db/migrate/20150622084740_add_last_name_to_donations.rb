class AddLastNameToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :last_name, :string
  end
end
