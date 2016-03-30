require "active_record"

class Insect < ActiveRecord::Base
  # name:, location:, description:, seen_by:
  validates :name, presence: true
  validates :description, presence: true
  validates :researcher_id, presence: true
  validates :genus_id, presence: true
  validates :location, presence: true

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
