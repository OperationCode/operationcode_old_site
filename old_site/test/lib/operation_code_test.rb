require 'test_helper'

class OperationCodeTest < ActiveSupport::TestCase
  test 'it returns a secret' do
    mock_path = Rails.root.join('/run/secrets/test')
    File.expects(:read).once.returns('mock secret value')
    assert_equal('mock secret value',  OperationCode.fetch_secret_with(name: 'test'))
  end

  test 'it chomps new lines' do
    mock_path = Rails.root.join('/run/secrets/test')
    File.expects(:read).once.returns("secret with newline\n")
    assert_equal('secret with newline',  OperationCode.fetch_secret_with(name: 'test'))
  end

  test 'it raises if the secret doesnt exist' do
    assert_raises(Errno::ENOENT) { OperationCode.fetch_secret_with name: 'non_existing_file_name' }
  end

  test 'it takes a symbol' do
    mock_path = Rails.root.join('/run/secrets/test')
    File.expects(:read).once.returns('mock secret value')
    assert_equal('mock secret value',  OperationCode.fetch_secret_with(name: :test))
  end
end
