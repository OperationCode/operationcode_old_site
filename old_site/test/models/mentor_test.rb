require 'test_helper'

class MentorTest < ActiveSupport::TestCase
  test 'can have mentees' do
    skip
    mentor = veterans(:mentor0)
    assert_difference('mentor.mentees.count') { veterans(:unmentored).update_attributes(mentor: mentor) }
  end

  test 'is a mentor' do
    skip
    assert veterans(:mentor0).mentor?
  end
end
