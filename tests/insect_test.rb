require "test_helper"
require_relative "../lib/insect.rb"

class InsectTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    refute_nil(insect)
  end

  def test_has_a_name
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    insect.name = "Giant Gadfly"
    assert_equal("Giant Gadfly", insect.name)
  end

  def test_has_a_description
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    insect.description = "Pretty friendly, but sort of scary looking."
    assert_equal("Pretty friendly, but sort of scary looking.", insect.description)
  end

  def test_has_a_location
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    insect.location = "Chilling on a sweet rock"
    assert_equal("Chilling on a sweet rock", insect.location)
  end

  def test_validator_should_fail_insect_with_no_name
    i = Insect.new(name: "Fuzzy mantis", description: "Fierce and cuddly", location: "In a tree")
    i.researcher_id = 1
    i.genus_id = 1
    assert(i.my_valid?, "should be valid at creation")

    i.name = nil
    refute(i.my_valid?, "should be invalid without a name")

    i.name = ""
    refute(i.my_valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_insect_with_no_description
    i = Insect.new(name: "Fuzzy mantis", description: "Fierce and cuddly", location: "In a tree")
    i.researcher_id = 1
    i.genus_id = 1
    assert(i.my_valid?, "should be valid at creation")

    i.description = nil
    refute(i.my_valid?, "should be invalid without a description")

    i.description = ""
    refute(i.my_valid?, "should be invalid with an empty description")
  end

  def test_validator_should_fail_insect_with_no_location
    i = Insect.new(name: "Fuzzy mantis", description: "Fierce and cuddly", location: "In a tree")
    i.researcher_id = 1
    i.genus_id = 1
    assert(i.my_valid?, "should be valid at creation")

    i.location = nil
    refute(i.my_valid?, "should be invalid without a location")

    i.location = ""
    refute(i.my_valid?, "should be invalid with an empty location")
  end

end
