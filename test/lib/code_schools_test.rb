require 'test_helper'

class CodeSchoolsTest < ActiveSupport::TestCase
  test 'it exists' do
    c = CodeSchools.new
    assert_instance_of CodeSchools, c
  end

  test 'raises if config doesnt exist' do
    assert_raises { CodeSchooles.new('/a/non/existent/path') }
  end

  test 'it returns schools that accept gi bill schools' do
    c = CodeSchools.new(Rails.root + 'test/support/code_schools/va_approved.yml')
    assert_equal 1, c.va_accepted.count
  end

  test 'it returns schools by state alphabetically' do
    c = CodeSchools.new(Rails.root + 'test/support/code_schools/by_state.yml')
    assert_kind_of Hash, c.by_state
    assert_equal 1, c.by_state['NY'].count
    assert_equal 2, c.by_state['CA'].count
    assert_equal 3, c.by_state['OR'].count

    assert_equal 'CA', c.by_state.keys.first
    assert_equal 'OR', c.by_state.keys.last
  end
end
