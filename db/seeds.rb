# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p1 = Post.create!(title: 'Mike Glennon benched', body: 'Rookie Mitch Trubisky finally has his time to
	shine for the Bears as mediocre quarterback Mike Glennon is finally benched after several weeks of disappointing 
	performances', author: 'Dallas Brady', image: 'http://static.nfl.com/static/content/public/photo/2017/03/21/0ap3000000794258_thumbnail_200_150.jpg', category: 'news')

Comment.create!(commenter: 'Chad Bryce', body: 'Excellent news, Glennon has been playing terribly', email_address: 'bearsfan@hotmail.com', location: 'Chicago', post_id: p1.id)
Comment.create!(commenter: 'Austin Starr', body: 'Our rookie quarterback is much better', email_address: 'houstonfan@hotmail.com', location: 'Houston', post_id: p1.id)
Comment.create!(commenter: 'Mike Glennon', body: 'I am sad about this', email_address: 'mglennon@outlook.com', location: 'Chicago', post_id: p1.id)