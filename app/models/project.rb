class Project < ActiveRecord::Base
 has_many :milestones
 def self.all_to_select
    Project.all.collect { |project| [project.name, project.id] }
    @projects = Project.all.collect { |project| [project.name, project.id] }
 end
end
