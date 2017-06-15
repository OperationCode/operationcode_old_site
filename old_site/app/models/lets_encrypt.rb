class LetsEncrypt < ActiveRecord::Base
  # This model lets us validate our SSL keys from LetsEncrypt via rails console

  self.table_name = :lets_encrypt

  validates :key, presence: true

  def self.key_for(token)
    entry = LetsEncrypt.where('key LIKE ?', "%#{token}%").last
    entry.nil? ? '' : entry.key
  end
end
