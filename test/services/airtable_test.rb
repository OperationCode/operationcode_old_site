require 'test_helper'

class AirtableServiceTest < ActiveSupport::TestCase
  def setup
    @airtable_opts = { base_id: '1234', table: 'test_table' }
    ENV['airtable_api_key'] = 'testkey'
  end

  test 'raises if no API key is found' do
    ENV['airtable_api_key'] = nil
    refute ENV['airtable_api_key']
    assert_raises(ArgumentError){ AirtableService.new(@airtable_opts) }

    ENV['airtable_api_key'] = ''
    assert ENV['airtable_api_key'].blank?
    assert_raises(ArgumentError){ AirtableService.new(@airtable_opts) }

    ENV['airtable_api_key'] = 'testkey'
    assert ENV['airtable_api_key']
    assert_kind_of AirtableService, AirtableService.new(@airtable_opts)
  end

  test 'lists records' do
    Airtable::Table.any_instance.expects(:records)
    AirtableService.new(@airtable_opts).list
  end

  test 'creates records' do
    Airtable::Table.any_instance.expects(:create)
    AirtableService.new(@airtable_opts).create({ col1: 'value 1', col2: 'value 2' })
  end
end
