class AddWelcomedToVeterans < ActiveRecord::Migration
  def change
    add_column :veterans, :welcomed, :boolean, default: false
  end
end
