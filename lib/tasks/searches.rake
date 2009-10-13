namespace :search do
  task :delicious => :environment do
    SearchTerm.all.each do |term|
      puts Time.now
      ds = DeliciousSearch.new(term.name)
      ds.get_links
      puts Time.now
    end
  end

  task :twitter => :environment do
    SearchTerm.all.each do |term|
      ds = TwitterSearch.new(term.name)
      ds.get_links
    end
  end
end