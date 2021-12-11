class StoresController < ApplicationController
  include MainConcern

  before_action :is_logged_in_store, except: %i[ show new create ]
  before_action :set_store, only: %i[ show edit update destroy ]
  before_action :set_current_user
  before_action :set_cart, only: %i[ show ]

  # GET /stores or /stores.json
  def index
    @stores = Store.all
  end

  # GET /stores/1 or /stores/1.json
  def show
    @store.set_rating
    @review = Review.new
    @cart_item = CartItem.new
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores or /stores.json
  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to index_url, notice: "Account was successfully created." }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render 'main/register', status: :unprocessable_entity }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1 or /stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to @store, notice: "Store was successfully updated." }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1 or /stores/1.json
  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: "Store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.require(:store).permit(:username, :password, :password_confirmation, :email, :address, :subDistrict, :district, :province, :zipcode, :totalRatingScore, :rateCount, :picture)
    end
end
