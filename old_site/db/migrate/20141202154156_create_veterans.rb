class CreateVeterans < ActiveRecord::Migration
  def change
    create_table :veterans do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :service_branch
      t.string :zip
      t.timestamps
    end
  end
end
