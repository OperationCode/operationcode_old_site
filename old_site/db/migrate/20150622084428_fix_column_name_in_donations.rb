class FixColumnNameInDonations < ActiveRecord::Migration
  def change
    rename_column :donations, :name, :first_name
  end
end
