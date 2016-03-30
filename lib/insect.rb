require "active_record"

class Insect < ActiveRecord::Base
  # name:, location:, description:, seen_by:

  def my_valid?
    # return true if all attributes are good, false otherwise
    name? && location? && description? && researcher_id? && genus_id?
  end

  def my_save
    if my_valid?
      save
    else
      false
    end
  end

  def researcher
    Researcher.find_by_id(researcher_id)
  end

  def researcher=(researcher)
    researcher_id = researcher.id
  end

  def genus
    Genus.find_by_id(genus_id)
  end

  def genus=(genus)
    genus_id = genus.id
  end

end
