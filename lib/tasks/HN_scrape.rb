require 'rubygems'
require 'json'
require 'ruby-hackernews'

include RubyHackernews

posts = Entry.all
x
posts.map! do |post|
  { :title => post.link.title,
    :site => post.link.site,
    :href => post.link.href,
    :number => post.number,
    :score => post.voting.score,
    :user => post.user.name,
    :time => post.time
    :comments => post.comments_count,
    :post_id => post.id,
end

time = Time.now.gmtime
filename = File.dirname(__FILE__) + "/public/data/"
now_filename = filename + "now.json"
filename += "#{time.year}-#{sprintf("%.3d", time.month)}-#{sprintf("%.3d", time.mday)}"
daily_filename = filename + ".json"
hourly_filename = filename + "-#{sprintf("%.2d", Time.now.hour)}.json"


puts "Writing #{now_filename}"
File.open(now_filename, "w") { |f| f.puts posts.to_json }

unless File.exist?(daily_filename)
  puts "Writing #{daily_filename}"
  File.open(daily_filename, "w") { |f| f.puts posts.to_json }
end

unless File.exist?(hourly_filename)
  puts "Writing #{hourly_filename}"
  File.open(hourly_filename, "w") { |f| f.puts posts.to_json }
end