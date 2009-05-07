class Project < ActiveRecord::Base
 has_many :milestones
 def self.all_to_select
<<<<<<< HEAD:app/models/project.rb
    Project.all.collect { |project| [project.name, project.id] }
=======
    @projects = Project.all.collect { |project| [project.name, project.id] }
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/models/project.rb
 end
end
