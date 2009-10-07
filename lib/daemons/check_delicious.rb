#!/usr/bin/env ruby

# You might want to change this
ENV["RAILS_ENV"] ||= "production"

require File.dirname(__FILE__) + "/../../config/environment"

$running = true
Signal.trap("TERM") do 
  $running = false
end

while($running) do
  
  # Replace this with your code
  SearchTerm.all.each do |term|
    ts = TwitterSearch.new(term.name)
    ts.get_links
  end

  sleep 300
end