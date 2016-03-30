require "active_record"
# + name
# + family
class Genus < ActiveRecord::Base

  validates :name, presence: true
  validates :family, presence: true

  def insects
    Insect.where(genus_id: id)
  end

  def add_insect(insect)
    insect.genus_id = id
  end

end
