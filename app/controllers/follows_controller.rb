class FollowsController < ApplicationController
	include MainConcern

	before_action :set_current_user
	before_action :set_store

	def follow
		@current_user.stores << @store
		redirect_back(fallback_location: feed_path(@current_user))
	end

	def unfollow
		@current_user.follows.find_by(store_id: @store).destroy
		redirect_back(fallback_location: feed_path(@current_user))
	end

	private
		def set_store
			@store = Store.find(params[:id]) rescue nil
		end
end