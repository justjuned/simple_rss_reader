class FeedJob < Struct.new(:feed_id)

	def perform
		feed = Feed.find(feed_id) rescue nil
		RSS::Feed.new(feed)
	end
end