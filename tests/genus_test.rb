require "test_helper"
require_relative "../lib/genus.rb"

class GenusTest < Minitest::Test

  def test_can_be_created_normally
    genus = Genus.new(name:"Drosophila", family:"Drosophilidae")
    refute_nil(genus)
  end

  def test_has_a_name
    genus = Genus.new(name:"Drosophila", family:"Drosophilidae")
    assert_equal("Drosophila", genus.name)
  end

  def test_has_a_family
    genus = Genus.new(name:"Drosophila", family:"Drosophilidae")
    assert_equal("Drosophilidae", genus.family)
  end

end
