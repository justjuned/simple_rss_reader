namespace :scheduler do
	task feeds: [:environment] do
		loop do
			Feed.all.each {|feed| Delayed::Job.enqueue FeedJob.new(feed.id), queue: 'fetch_feed_queue' }
			sleep(2.minutes)
		end
	end
end
