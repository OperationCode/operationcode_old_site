# frozen_string_literal: true
require 'test_helper'

class MenteeMailerTest < ActionMailer::TestCase
  test 'welcome' do
    mentor = veterans(:mentor0)
    mentee = veterans(:mentored0)
    email = MenteeMailer.welcome(mentor: mentor, mentee: mentee)

    # Send the email, then test that it got queued
    assert_emails 1 do
      email.deliver_now
    end

    # Test the body of the sent email contains what we expect it to
    assert_equal [mentor.email], email.from
    assert_equal [mentee.email], email.to
    assert_equal ['mentorship@operationcode.org'], email.bcc
    refute mentor.bio.nil?
    assert_includes email.body.to_s, mentor.bio
  end
end
