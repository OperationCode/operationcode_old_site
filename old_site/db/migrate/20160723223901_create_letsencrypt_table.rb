class CreateLetsencryptTable < ActiveRecord::Migration
  def change
    create_table :lets_encrypt do |t|
      t.string :key
    end
  end
end
