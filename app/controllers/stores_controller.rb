class StoresController < ApplicationController
  before_action :authenticate!, except: [:index, :show]

  # GET /stores
  def index
    if params[:cuisine].present?
      @stores = Store.where(cuisine: params[:cuisine])
    else
      @stores = Store.all
    end
  end

  def lucky
    store = Store.all.sample

    redirect_to store
  end

  # GET /stores/1
  def show
    @store = Store.find(params[:id])
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
    @store = Store.find(params[:id])
  end

  # POST /stores
  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to @store, notice: 'Store was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /stores/1
  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to @store, notice: 'Store was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stores/1
  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_url, notice: 'Store was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def store_params
      params.require(:store).permit(:name, :address, :phone, :website, :hours, :price, :cuisine, :menu)
    end
end
