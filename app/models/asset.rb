class Asset < ActiveRecord::Base
  belongs_to :task
  def self.all_to_select
     Asset.all.collect { |asset| [asset.name, asset.id] }
  end
end
