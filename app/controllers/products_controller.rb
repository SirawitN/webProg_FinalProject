class ProductsController < ApplicationController

  include MainConcern
  before_action :is_logged_in_store, only: %i[ edit new destroy ]
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    if params[:tag]
      @products = Product.tagged_with(params[:tag])
    else
      @products = Product.all
    end
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @product.store_id = session[:store_id]
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    @product.store_id = session[:store_id]

    respond_to do |format|
      if @product.save
        format.html { redirect_to store_path(session[:store_id]), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to store_path(session[:store_id]), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to store_path(session[:store_id]), notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :picture, :tag_list, :quantity)
    end
end
