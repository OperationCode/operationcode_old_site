# frozen_string_literal: true
require 'test_helper'

class VeteranTest < ActiveSupport::TestCase
  test 'can have a mentor' do
    mentor = veterans(:mentor0)
    assert_difference('mentor.mentees.count') { veterans(:unmentored).update_attributes(mentor: mentor) }
  end

  test 'is not a mentor' do
    refute veterans(:mentored0).mentor?
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

  test 'can add a user to mail chimp' do
    veteran = Veteran.first
    MailchimpInviterJob.expects(:perform_later).with(
      email: veteran.email,
      first_name: veteran.first_name,
      last_name: veteran.last_name
    )
    veteran.add_to_mailchimp
  end

  test 'can be welcomed' do
    mentee = veterans(:unmentored)
    mentor = veterans(:mentor0)
    MenteeMailer.expects(:welcome).with(mentor: mentor, mentee: mentee).returns(ActionMailer::Base.mail)

    refute mentee.welcomed?
    refute mentee.mentor
    mentee.welcome_from! mentor
    assert mentee.welcomed?
    assert_equal mentor, mentee.mentor
  end
end
