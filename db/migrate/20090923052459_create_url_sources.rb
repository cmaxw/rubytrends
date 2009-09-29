class CreateUrlSources < ActiveRecord::Migration
  def self.up
    create_table :url_sources do |t|
      t.string :name
      t.timestamps
    end
  
    add_index :url_sources, :name, :unique => true
  end

  def self.down
    drop_table :url_sources
  end
end
