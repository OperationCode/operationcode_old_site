class LetsEncrypt < ActiveRecord::Base
  # This model lets us validate our SSL keys from LetsEncrypt via rails console

  self.table_name = :lets_encrypt

  validates :key, presence: true

  def self.key
    entry = last
    entry.nil? ? '' : entry.key
  end
end
