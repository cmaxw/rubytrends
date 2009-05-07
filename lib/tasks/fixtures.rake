namespace :db do
  namespace :fixtures do

    desc 'Create YAML test fixtures from data in an existing database.
         Defaults to development database.  Set RAILS_ENV to override.'
    task :dump => :environment do
      sql  = "SELECT * FROM %s"
      skip_tables = ["schema_migrations"]
      ActiveRecord::Base.establish_connection(RAILS_ENV)
      if defined?(ENV['TABLES']) && !ENV['TABLES'].nil?
        tables=ENV['TABLES'].split(',')
      end
      tables ||= (ActiveRecord::Base.connection.tables - skip_tables)
      tables.each do |table_name|
        i = "000"
        File.open("#{RAILS_ROOT}/test/fixtures/#{table_name}.yml", 'w') do |file|
          data = ActiveRecord::Base.connection.select_all(sql % table_name)
          file.write data.inject({}) { |hash, record|
            hash["#{table_name}_#{i.succ!}"] = record
            hash
          }.to_yaml
        end
      end
    end
  end
end
