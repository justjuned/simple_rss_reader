class Item < ApplicationRecord
	belongs_to :feed

	validates_presence_of :title, :url, :published_date
	validates_uniqueness_of :url, :title

	# NOTE: Very basic url format checker
	validates_format_of :url, with: URI::regexp(%w(http https))
end
