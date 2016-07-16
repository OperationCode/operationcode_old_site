require 'test_helper'

class VeteranTest < ActiveSupport::TestCase
  test 'can have a mentor' do
    mentor = veterans(:mentor_0)
    assert_difference('mentor.mentees.count') { veterans(:unmentored).update_attributes(mentor: mentor) }
  end

  test 'is not a mentor' do
    refute veterans(:mentored_0).mentor?
    refute veterans(:unmentored).mentor?
  end

  test 'provides a name' do
    name_test_params = { email: 'name_test_email@example.com', first_name: 'FirstName', last_name: 'LastName' }
    assert_equal 'FirstName LastName', Veteran.new(name_test_params).name
    assert_equal 'FirstName LastName', Veteran.new(name_test_params.except(:email)).name
    assert_equal 'LastName', Veteran.new(name_test_params.except(:first_name)).name
    assert_equal 'FirstName', Veteran.new(name_test_params.except(:last_name)).name
    assert_equal 'name_test_email@example.com', Veteran.new(name_test_params.except(:first_name, :last_name)).name
  end

  test 'sends a mentor request' do
    veteran = Veteran.first
    slack_message = "A new user (#{veteran.first_name} #{veteran.last_name} <#{veteran.email}>) has requested a mentor."
    SlackNotifierJob.expects(:perform_later).with(slack_message, channel: 'mentors')
    veteran.send_mentor_request
  end

  test 'can add a user to mail chimp' do
    veteran = Veteran.first
    MailchimpInviterJob.expects(:perform_later).with(
      email: veteran.email,
      first_name: veteran.first_name,
      last_name: veteran.last_name
    )
    veteran.add_to_mailchimp
  end
end
