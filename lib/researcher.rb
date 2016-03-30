# Researchers are just grad students
# + name: string (this is the name of our grad student peons)
# + age: integer (this is how old they are)

class Researcher < ActiveRecord::Base

  validate :name, presence: true
  validate :age, presence: true

  def insects
    Insect.where(researcher_id: id)
  end

  def add_insect(insect)
    insect.researcher_id = id
  end

end
