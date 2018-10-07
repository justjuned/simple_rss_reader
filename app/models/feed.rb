class Feed < ApplicationRecord
	has_many :items, dependent: :destroy

	validates_presence_of :name, :url
	validates_uniqueness_of :url

	# NOTE: Very basic url format checker
	validates_format_of :url, with: URI::regexp(%w(http https))
end
