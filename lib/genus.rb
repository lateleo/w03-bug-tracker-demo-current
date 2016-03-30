require "active_record"

class Genus < ActiveRecord::Base

  def insects
    Insect.where(genus_id: id)
  end

  def add_insect(insect)
    insect.genus_id = id
  end

end
