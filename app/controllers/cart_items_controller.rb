class CartItemsController < ApplicationController
  include MainConcern

  before_action :is_logged_in_user, only: %i[ create destroy ]
  before_action :set_cart, only: %i[ create destroy ]
  before_action :set_cart_item, only: %i[ show edit update destroy ]

  # GET /cart_items or /cart_items.json
  def index
    @cart_items = CartItem.all
  end

  # GET /cart_items/1 or /cart_items/1.json
  def show
  end

  # GET /cart_items/new
  def new
    @cart_item = CartItem.new
  end

  # GET /cart_items/1/edit
  def edit
  end

  # POST /cart_items or /cart_items.json
  def create
    id = params[:cart_item][:product_id]
    quant = params[:cart_item][:quantity].to_i
    product = Product.find(id)
    if check_store(product) && quant > 0 && quant <= product.quantity.to_i
      @cart_item = @cart.add_product(product, quant)
      respond_to do |format|
        if @cart_item.save
          format.html { redirect_to store_path(product.store), notice: "Item added" }
          format.json { render :show, status: :created, location: @cart_item }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @cart_item.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to store_path(@cart.get_store_id), alert: (quant > product.quantity || quant <= 0) ? "Invalid product's quantity, please try again." : "Please clear the cart before purchasing products from other stores."
    end
  end

  # PATCH/PUT /cart_items/1 or /cart_items/1.json
  def update
    respond_to do |format|
      if @cart_item.update(cart_item_params)
        format.html { redirect_to @cart_item, notice: "Cart item was successfully updated." }
        format.json { render :show, status: :ok, location: @cart_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1 or /cart_items/1.json
  def destroy
    @cart_item.destroy
    respond_to do |format|
      format.html { redirect_to store_path(@cart_item.product.store_id), notice: "Item removed" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_item_params
      params.require(:cart_item).permit(:product_id, :quantity)
    end

    def check_store(product)
      if @cart.cart_items.any? && @cart.get_store_id == product.store_id || !@cart.cart_items.any?
        session[:bought_store_id] = product.store_id
        return true
      end
      return false
    end
end
