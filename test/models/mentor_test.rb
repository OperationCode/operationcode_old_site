require 'test_helper'

class MentorTest < ActiveSupport::TestCase
  test 'can have mentees' do
    mentor = veterans(:mentor_0)
    assert_difference('mentor.mentees.count') { veterans(:unmentored).update_attributes(mentor: mentor) }
  end

  test 'is a mentor' do
    assert veterans(:mentor_0).mentor?
  end
end
