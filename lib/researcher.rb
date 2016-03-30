# Researchers are just grad students
# + name: string (this is the name of our grad student peons)
# + age: integer (this is how old they are)

class Researcher < ActiveRecord::Base

  validates :name, presence: true
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 2}

  def insects
    Insect.where(researcher_id: id)
  end

  def add_insect(insect)
    insect.researcher_id = id
  end

end
