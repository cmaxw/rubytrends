class Task < ActiveRecord::Base
  belongs_to :milestone
<<<<<<< HEAD:app/models/task.rb
  has_many :assets
  def self.all_to_select
     Task.all.collect { |task| [task.name, task.id] }
  end
=======
>>>>>>> 842ffe4f2ef88bfa88337ee09ea3858e4f05d24c:app/models/task.rb
end
