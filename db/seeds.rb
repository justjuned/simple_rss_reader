Feed.create([
	{name: 'India news from ESPN Cricinfo.com', url: 'http://www.espncricinfo.com/rss/content/story/feeds/6.xml'},
 	{name: 'RSS Feeds | GOOGLE - RSS Feed - NDTV Gadgets360.com', url: 'https://gadgets.ndtv.com/rss/google/feeds'}
])

# NOTE: TO Generate items for first feed entry so that we can show feeds on the homepage.
RSS::Feed.new(Feed.first)