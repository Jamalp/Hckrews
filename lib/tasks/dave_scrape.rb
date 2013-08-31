require 'mechanize'
require 'pry'

# name_url = []
# points = []
# comments = []

agent = Mechanize.new
for x in 6307378..6307387
  # These only work a story page
  page = agent.get("http://news.ycombinator.com/item?id=#{x}")

  # These two lines have the same output
  p page.title.gsub(' | Hacker News', '')
  p page.search('tr td.title a').text
  if page.search('tr td.title a').first.attributes["href"] != nil
    story_link = page.search('tr td.title a').first.attributes["href"].value
  # binding.pry
  else
    console.log('storylink')
  end
  points = page.search('tr td.subtext span').first.children.first.text.match(/\d+/).to_s.to_i
  sleep(5) # Trying to not piss off pg
end

# A function that grabs a specific page given a page ID

# Have something that goes and queues the past 500 stories to be refreshed once every 10 minutes


# class Story < ActiveRecord
  # scope :most_recent, lambda {|x| x.where('DESC LIMIT 300')}
# end
# recent_stories = Story.most_recent
# recent_stories.each do |x|
#   Resque.enqueue(UpdateStory, x)
# end

