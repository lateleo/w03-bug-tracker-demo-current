require "active_record"
# + name
# + family
class Genus < ActiveRecord::Base

  def insects
    Insect.where(genus_id: id)
  end

  def add_insect(insect)
    insect.genus_id = id
  end

end
