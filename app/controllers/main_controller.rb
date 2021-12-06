class MainController < ApplicationController

	def logIn
		@user = User.new
	end

	def register
		@user = User.new
	end
end
