class FeedJob < Struct.new(:feed)

	def perform
		RSS::Feed.new(feed)
	end
end