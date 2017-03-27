class AddUserToAirtablesJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    base_id =
    Operationcode::Airtable.new(base_id:  'YOUR-BASE-ID', table: 'YOUR-TABLE-NAME')
  end
end
