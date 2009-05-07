class Task < ActiveRecord::Base
  belongs_to :milestone
  has_many :assets
  def self.all_to_select
     Task.all.collect { |task| [task.name, task.id] }
  end
end
