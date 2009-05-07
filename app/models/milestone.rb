class Milestone < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  def self.all_to_select
     Milestone.all.collect { |milestone| [milestone.name, milestone.id] }
  end

end
