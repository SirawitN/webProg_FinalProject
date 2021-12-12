class OrdersController < ApplicationController
  include MainConcern

  before_action :is_logged_in_user, only: %i[ new create index ]
  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :set_current_user
  before_action :set_cart

  # GET /orders or /orders.json
  def index
    @orders = session[:user_id] ? User.find(session[:user_id]).orders : Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
    @idx = params[:idx]
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    if @cart.cart_items.any? && @cart.save
      @order = Order.create!(user_id: params[:user_id], store_id: params[:store_id])
      @order[:total] = @cart.total

      @cart.cart_items.each do |cart_item|
        @order.order_items.create!(
          product_id: cart_item[:product_id],
          quantity: cart_item[:quantity],
          unit_sold_price: cart_item.unit_price
        )
        product = Product.find(cart_item[:product_id])
        product.set_quant(-1*cart_item[:quantity].to_i)
        product.save
      end

      respond_to do |format|
        if @order.save
          @cart.cart_items.destroy_all 
          session[:bought_store_id] = nil
          format.html { redirect_to feed_path(session[:user_id]), notice: "Order was successfully created." }
          format.json { render :show, status: :created, location: @order } #<<------------- have to redirect to user's orders page
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to index_url, notice: @cart.cart_items.any? ? 'Something went wrong saving the order' : "There's no items to submit."
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:user_id, :store_id)
    end
end
