require 'rubygems'
require 'json'
require 'ruby-hackernews'
include RubyHackernews

namespace :hn_rake do
  desc "Using HN Gem to Pull posts from the front page"
  task posts: :environment do
    # Query hackernews with entry.all
    # store each returned entry as a post
    Entry.all(8).each do |post|
      post_data = { title: post.link.title,
                    description: post.link.text,
                    site: post.link.site,
                    href: post.link.href,
                    score: post.voting.score,
                    user: post.user.name,
                    comments_count: post.comments_count,
                    hn_post_id: post.id,
                    created_at: post.time
                  }
      post = Post.create(post_data)
    end
  end
end