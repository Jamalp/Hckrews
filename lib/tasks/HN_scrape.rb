require 'rubygems'
require 'json'
require 'ruby-hackernews'

include RubyHackernews

post = Entry.all

post do |post|
    { :title => post.link.title,
      :site => post.link.site,
      :href => post.link.href,
      :number => post.number,
      :score => post.voting.score,
      :user => post.user.name,
      :hours_ago => ((Time.now.to_i - post.time.to_i) / 3600).to_i,
      :comments => post.comments_count,
      :item_id => post.id,
      :is_new => (Time.now.to_i - post.time.to_i) < 3600 }    # eugh!
  end

time = Time.now.gmtime
filename = File.dirname(__FILE__) + "/public/data/"
now_filename = filename + "now.json"
filename += "#{time.year}-#{sprintf("%.2d", time.month)}-#{sprintf("%.2d", time.mday)}"
daily_filename = filename + ".json"
hourly_filename = filename + "-#{sprintf("%.2d", Time.now.hour)}.json"


puts "Writing #{now_filename}"
File.open(now_filename, "w") { |f| f.puts items.to_json }

unless File.exist?(daily_filename)
  puts "Writing #{daily_filename}"
  File.open(daily_filename, "w") { |f| f.puts items.to_json }
end

unless File.exist?(hourly_filename)
  puts "Writing #{hourly_filename}"
  File.open(hourly_filename, "w") { |f| f.puts items.to_json }
end