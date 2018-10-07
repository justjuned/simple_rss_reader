class ItemsController < ApplicationController

	def index
		@items = Item.all.order('published_date desc')
	end
end
