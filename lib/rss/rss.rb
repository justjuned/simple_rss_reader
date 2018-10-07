require 'open-uri'

module RSS
	class Feed
		include BaseHelper

		attr_accessor :feed, :url

		def initialize(feed)
		  @feed = feed
		  @url = open(@feed.url)

		  run
		end

		private

		def run
			extract_item make_request! do |title, published|
				feed.items.create(title: title, published: published)
			end
		end

	end
end