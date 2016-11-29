class AirtableService
  # Service for the Airtable service/gem.
  # https://github.com/Airtable/airtable-ruby
  # Airtable is where we store our user information upon signup
  #
  # @param base_id [String] base_id for the airtable base. This can be found on the API page
  # @param table [String] the name of the airbase table
  # @return [AirtableService]
  def initialize(base_id:, table:)
    api_key = ENV['airtable_api_key']
    raise(ArgumentError, 'Airtable API Key not set') if api_key.blank?

    client = Airtable::Client.new(api_key)
    @table = client.table(base_id, table)
  end

  # Lists all records in the table
  def list
    @table.records
  end

  # Creates a record in airtables
  #
  # @param record [Hash] A hash containing all, some, or none of the key/value pairs of columns in the table
  # @return [Airtable::Record] if successful, `false` if there was an error
  def create(record)
    record = Airtable::Record.new(record)
    @table.create record
  end
end
