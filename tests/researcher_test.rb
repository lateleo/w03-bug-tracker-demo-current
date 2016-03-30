require "test_helper"
require_relative "../lib/researcher.rb"

class ResearcherTest < Minitest::Test

  def test_the_truth
    assert(true)
  end

  def test_validator_should_fail_researcher_with_no_name
    r = Researcher.new(name:"Art", age:24)
    assert(r.my_valid?, "should be valid at creation")

    r.name = nil
    refute(r.my_valid?, "should be invalid without a name")

    r.name = ""
    refute(r.my_valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_researcher_with_invalid_age
    r = Researcher.new(name:"Art", age:24)
    assert(r.my_valid?, "should be valid at creation")

    r.age = nil
    refute(r.my_valid?, "should be invalid without an age")

    r.age = 1
    refute(r.my_valid?, "should be invalid with an age less than 2")

    r.age = 0
    refute(r.my_valid?, "should be invalid with an age less than 2")

    r.age = -1
    refute(r.my_valid?, "should be invalid with an age less than 2")

    r.age = -2
    refute(r.my_valid?, "should be invalid with an age less than 2")
  end

end
