class CreateUrls < ActiveRecord::Migration
  def self.up
    create_table :urls do |t|
      t.string :url
      t.references :url_source
      t.string :source_identifier
      t.timestamps
    end
  end

  def self.down
    drop_table :urls
  end
end
