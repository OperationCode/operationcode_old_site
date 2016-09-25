class AddBioToVeterans < ActiveRecord::Migration
  def change
    add_column :veterans, :bio, :text
  end
end
