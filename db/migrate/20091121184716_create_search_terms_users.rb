class CreateSearchTermsUsers < ActiveRecord::Migration
  def self.up
    create_table :search_terms_users do |t|
      t.references :user
      t.references :search_term

      t.timestamps
    end
  end

  def self.down
    drop_table :search_terms_users
  end
end
