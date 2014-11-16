class MarbleProductsController < ApplicationController
  before_action :set_marble_product, only: [:show, :edit, :update, :destroy]

  # GET /marble_products
  # GET /marble_products.json
  def index
    @marble_products = MarbleProduct.all
  end

  # GET /marble_products/1
  # GET /marble_products/1.json
  def show
  end

  # GET /marble_products/new
  def new
    @marble_product = MarbleProduct.new
  end

  # GET /marble_products/1/edit
  def edit
  end

  # POST /marble_products
  # POST /marble_products.json
  def create
    @marble_product = MarbleProduct.new(marble_product_params)

    respond_to do |format|
      if @marble_product.save
        format.html { redirect_to marble_products_url, notice: 'Marble product was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @marble_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marble_products/1
  # PATCH/PUT /marble_products/1.json
  def update
    respond_to do |format|
      if @marble_product.update(marble_product_params)
        format.html { redirect_to @marble_product, notice: 'Marble product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @marble_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marble_products/1
  # DELETE /marble_products/1.json
  def destroy
    @marble_product.destroy
    respond_to do |format|
      format.html { redirect_to marble_products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marble_product
      @marble_product = MarbleProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marble_product_params
      params.require(:marble_product).permit(:name,:price,:product_pics,:zoom_image)
    end
end
