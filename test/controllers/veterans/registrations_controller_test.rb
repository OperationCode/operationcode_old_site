require 'test_helper'

module Veterans
  class RegistrationsControllerTest < ActionController::TestCase
    include Devise::Test::ControllerHelpers

    test 'a veteran can register' do
      @request.env['devise.mapping'] = Devise.mappings[:veteran]
      post :create, veteran: { email: 'test@example.com', zip: '11772' }
      assert_redirected_to profile_path
    end
  end
end
