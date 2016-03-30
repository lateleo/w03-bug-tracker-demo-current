# Researchers are just grad students
# + name: string (this is the name of our grad student peons)
# + age: integer (this is how old they are)

class Researcher < ActiveRecord::Base

  def my_valid?
    # return true if all attributes are good, false otherwise
    name? && (age.to_i > 1)
  end

  def my_save
    my_valid? ? save : false
  end

  def insects
    Insect.where(researcher_id: id)
  end

  def add_insect(insect)
    insect.researcher_id = id
  end

end
