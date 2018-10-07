class FeedsController < ApplicationController

	before_action :set_feed!, except: :index

	def index
		@feeds = Feed.all
	end

	def create
	  @feed = Feed.new(feed_params)

    if @feed.save
    	redirect_to feeds_url, notice: 'Feed was successfully created.'
    else
      render :new, error: 'Failed! to create feed.'
    end
	end

	def update
  	if @feed.update_attributes(feed_params)
  		redirect_to feed_url(@feed), notice: 'Feed was successfully updated.'
  	else
  	  render :new, error: 'Failed! to updated feed.'
  	end
	end

	def destroy
	  if @feed.destroy
	  	redirect_to feeds_url, notice: 'Feed was successfully destroyed.'
	  else
	  	render feeds_path, error: "Unable to destroy feed #{@feed.name}"
	  end
	end

	private
  def set_feed!
    @feed = Feed.find(params[:id]) rescue Feed.new
  end

  def feed_params
    params.require(:feed).permit(:name, :url)
  end
end
