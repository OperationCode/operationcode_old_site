class AddTypeToVeterans < ActiveRecord::Migration
  def change
    add_column :veterans, :type, :string
  end
end
