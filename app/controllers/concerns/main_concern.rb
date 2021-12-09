module MainConcern
	extend ActiveSupport::Concern

	def is_logged_in_user
    if !session[:user_id]  #check nil
      flash[:alert] = "Please login before making any action !!!"
      redirect_to index_url
    end
  end

  def is_logged_in_store
    if !session[:store_id]  #check nil
      flash[:alert] = session[:user_id]? "You can't perform this action" : "Please login before making any action !!!"
      redirect_to index_url
    end
  end

  def is_the_right_user(user_id)
    #puts "session = #{session[:user_id]},  user_id = #{user_id}"
    if(session[:user_id] != user_id)
    	redirect_back fallback_location: main_path, alert: "Access denied!!"
    end
   end

   def set_current_user
    @current_user = User.find(session[:user_id]) rescue nil
   end

   def set_cart
      if !session[:user_id]
        return
      end
      set_current_user
      if @current_user.cart
        @cart = @current_user.cart
      else 
        @cart = Cart.create(user_id: @current_user.id)
        @current_user.cart = @cart
      end
      session[:cart_id] = @cart.id
    end

end