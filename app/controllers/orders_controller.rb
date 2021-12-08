class OrdersController < ApplicationController
  include MainConcern

  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :set_current_user
  before_action :set_cart

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
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
    if @cart.save
      @order = Order.create(user_id: params[:user_id])

      @cart.cart_items.each do |cart_item|
        @order.order_items.create!(
          product_id: cart_item[:product_id],
          quantity: cart_item["quantity"],
          unit_sold_price: cart_item.unit_price
        )
      end
      respond_to do |format|
        if @order.save
          @cart.cart_items.destroy_all
          format.html { redirect_to @order, notice: "Order was successfully created." }
          format.json { render :show, status: :created, location: @order }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to index_url, notice: 'Something went wrong saving the order'
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
      params.require(:order).permit(:user_id)
    end
end
