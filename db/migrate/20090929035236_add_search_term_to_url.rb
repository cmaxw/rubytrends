class AddSearchTermToUrl < ActiveRecord::Migration
  def self.up
    add_column :urls, :search_term_id, :integer
  end

  def self.down
    remove_column :urls, :search_term_id
  end
end
