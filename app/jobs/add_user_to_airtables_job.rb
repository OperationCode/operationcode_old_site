# frozen_string_literal: true

class AddUserToAirtablesJob < ActiveJob::Base
  queue_as :default

  def perform(user)
    @user = user
    @airtable = setup_airtable

    if user_exists?
      Rails.logger.info "User with email '#{@user.email}' already exists in airtables"
      return
    end

    @airtable.create(
      email: @user.email,
      zip: @user.zip,
      latitude: @user.latitude,
      longitude: @user.longitude,
      created_at: @user.created_at,
      updated_at: @user.updated_at
    )
  end

  def setup_airtable
    api_key  = OperationCode.fetch_secret_with(name: 'airtable_api_key')
    base_id  = OperationCode.fetch_secret_with(name: 'airtable_add_user_base_id')
    table_id = OperationCode.fetch_secret_with(name: 'airtable_add_user_table_name')
    Operationcode::Airtable.new(api_key: api_key, base_id: base_id, table: table_id)
  end

  def user_exists?
    @airtable.find_by(email: @user.email)
  end
end
