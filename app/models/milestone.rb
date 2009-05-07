class Milestone < ActiveRecord::Base
  belongs_to :project
<<<<<<< HEAD:app/models/milestone.rb
  has_many :tasks
  def self.all_to_select
     Milestone.all.collect { |milestone| [milestone.name, milestone.id] }
  end
=======
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/models/milestone.rb
end
