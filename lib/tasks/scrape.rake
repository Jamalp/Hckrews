# require 'mechanize'

# name_url = []
# points = []
# comments = []

# agent = Mechanize.new

# page = agent.get('https://news.ycombinator.com')
# name_url << page.search('tr td.title a').map{ |i| [i[:href], i.text] }
# points << page.search('tr td.subtext span').map{ |i| i.text }
# comments << page.search('tr td.subtext a').map{ |i| i[:href]}

# 2.times do
#   if page.link_with(:href => 'news2')
#     page = page.link_with(:href => 'news2').click
#     name_url << page.search('tr td.title a').map{ |i| [i[:href], i.text] }
#     points << page.search('tr td.subtext span').map{ |i| i.text }
#     comments << page.search('tr td.subtext a').map{ |i| i[:href]}
#   else
#     page = page.link_with(:href => /\/x\?fnid=/).click
#     name_url << page.search('tr td.title a').map{ |i| [i[:href], i.text] }
#     points << page.search('tr td.subtext span').map{ |i| i.text }
#     comments << page.search('tr td.subtext a').map{ |i| i[:href]}
#   end
# end
