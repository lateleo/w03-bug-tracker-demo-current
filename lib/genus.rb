require "active_record"
# + name
# + family
class Genus < ActiveRecord::Base

  validate :name, presence: true
  validate :family, presence: true
  
  def insects
    Insect.where(genus_id: id)
  end

  def add_insect(insect)
    insect.genus_id = id
  end

end
