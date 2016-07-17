class AddMentorIdToVeterans < ActiveRecord::Migration
  def change
    add_column :veterans, :mentor_id, :integer
  end
end
