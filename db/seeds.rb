# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1000.times do
  post = Post.new(title: "We Let Our Employee Set Their Own Salaries",
                  url: "http://figure53.com/notes/2013-08-30-we-just-set-our-salaries/",
                  points: 157,
                  comments: 84,
                  top_comment: "I intellectually really like these experiments, but one of the things virtually every startup advisor tells you is 'only innovate when and where you must'",
                  hot: true);
  post.save
end


