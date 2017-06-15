class AddWantsMentorToVeterans < ActiveRecord::Migration
  def change
    add_column :veterans, :wants_mentor, :boolean
  end
end
