class MainController < ApplicationController
	include MainConcern

	before_action :is_logged_in_user, only: %i[ feed ]
	before_action :set_user, only: %i[ feed ]
	before_action :set_current_user
	before_action :set_cart, only: %i[ feed ]

	def logIn
		# puts "user_id = #{session[:user_id]}, store_id = #{session[:store_id]}"
		if session[:user_id]
      		redirect_to feed_path(session[:user_id])
    	elsif session[:store_id]
    		redirect_to store_path(session[:store_id])
    	else
			@user = User.new
		end
	end

	def cust_login
		@user = User.new
	end

	def store_login
		@store = Store.new
	end

	def logOut
	    session[:user_id] = nil
	    session[:store_id] = nil
	    session[:cart_id] = nil
	    session[:bought_store_id] = nil
	    redirect_to index_path
  	end

	def register
		@user = User.new
	end

	def findCust
		# puts "username, pass = #{params["user"]["username"]}, #{params["user"]["password"]}"
		@user = User.find_by(username: params["user"]["username"]).authenticate(params["user"]["password"]) rescue nil
	    respond_to do |format|
	      	if @user
	            # puts "Found"
	            format.html {redirect_to feed_path(@user)}
	            session[:user_id] = @user.id
	        else 
	            # puts "Not found"
	            flash.alert = "Log in failed, wrong username or password !!"
	            format.html { redirect_to index_path}    
	        end
	    end
	end


	def findStore
		# puts "username, pass = #{params["store"]["username"]}, #{params["store"]["password"]}"
		@store = Store.find_by(username: params["store"]["username"]).authenticate(params["store"]["password"]) rescue nil
	    respond_to do |format|
	      	if @store
	            # puts "Found"
	            format.html { redirect_to store_path(@store) }
	            session[:store_id] = @store.id
	        else 
	            # puts "Not found"
	            flash.alert = "Log in failed, wrong username or password !!"
	            format.html { redirect_to index_path}    
	        end
	    end
	end

	def feed
		@most_used_tags = ActsAsTaggableOn::Tag.most_used(5)
		@products = Hash.new
		products = Array.new
		@most_used_tags.each do |t|
			products.clear
			@user.stores.each do |store|
				products.push(store.products.tagged_with(t))
			end
			products.push(Product.tagged_with(t))
			@products["#{t.name}"] = products.flatten.to_set
		end
		session[:bought_store_id] = @cart.get_store_id rescue nil
	end


	private
		def set_user
			@user = User.find(params[:id])
		end

end
