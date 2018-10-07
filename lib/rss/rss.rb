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
			extract_item make_request! do |attr|
				feed.items.create(attr)
			end
		end
	end
end