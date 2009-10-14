namespace :search do
  task :delicious => :environment do
    SearchTerm.all.each do |term|
      ds = DeliciousSearch.new(term.name)
      ds.get_links
    end
  end

  task :twitter => :environment do
    SearchTerm.all.each do |term|
      ds = TwitterSearch.new(term.name)
      ds.get_links
    end
  end

  task :reddit => :environment do
    SearchTerm.all.each do |term|
      ds = RedditSearch.new(term.name)
      ds.get_links
    end
  end

end