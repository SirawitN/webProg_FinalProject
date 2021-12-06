class MainController < ApplicationController

	def logIn
		puts "user_id = #{session[:user_id]}, store_id = #{session[:store_id]}"
		session[:user_id] = nil
		session[:store_id] = nil
		@user = User.new
	end

	def cust_login
		@user = User.new
	end

	def store_login
		@store = Store.new
	end

	def register
		@user = User.new
	end

	def findCust
		puts "username, pass = #{params["user"]["username"]}, #{params["user"]["password"]}"
		@user = User.find_by(username: params["user"]["username"]).authenticate(params["user"]["password"]) rescue nil
	    respond_to do |format|
	      	if @user
	            puts "Found"
	            format.html {redirect_to users_url}
	            session[:user_id] = @user.id
	        else 
	            puts "Not found"
	            flash.alert = "Log in failed, wrong email or password !!"
	            format.html { redirect_to index_path}    
	        end
	    end
	end


	def findStore
		puts "username, pass = #{params["store"]["username"]}, #{params["store"]["password"]}"
		@store = Store.find_by(username: params["store"]["username"]).authenticate(params["store"]["password"]) rescue nil
	    respond_to do |format|
	      	if @store
	            puts "Found"
	            format.html {redirect_to stores_url}
	            session[:store_id] = @store.id
	        else 
	            puts "Not found"
	            flash.alert = "Log in failed, wrong email or password !!"
	            format.html { redirect_to index_path}    
	        end
	    end
	end


end
