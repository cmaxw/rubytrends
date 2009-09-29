class CreateSearchTermUrls < ActiveRecord::Migration
  def self.up
    create_table :search_term_urls do |t|
      t.references :search_term
      t.references :url

      t.timestamps
    end
  end

  def self.down
    drop_table :search_term_urls
  end
end
