# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Feed.create([
 	{name: 'RSS Feeds | GOOGLE - RSS Feed - NDTV Gadgets360.com', url: 'https://gadgets.ndtv.com/rss/google/feeds'},
	{name: 'BBC world news', url: 'http://feeds.bbci.co.uk/news/world/rss.xml'}
])