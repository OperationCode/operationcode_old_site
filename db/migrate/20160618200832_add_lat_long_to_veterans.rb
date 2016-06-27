class AddLatLongToVeterans < ActiveRecord::Migration
  def change
    add_column :veterans, :latitude, :float
    add_column :veterans, :longitude, :float
  end
end
