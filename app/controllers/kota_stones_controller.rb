class KotaStonesController < ApplicationController
  before_action :set_kota_stone, only: [:show, :edit, :update, :destroy]

  # GET /kota_stones
  # GET /kota_stones.json
  def index
    @kota_stones = KotaStone.all
  end

  # GET /kota_stones/1
  # GET /kota_stones/1.json
  def show
  end

  # GET /kota_stones/new
  def new
    @kota_stone = KotaStone.new
  end

  # GET /kota_stones/1/edit
  def edit
  end

  # POST /kota_stones
  # POST /kota_stones.json
  def create
    @kota_stone = KotaStone.new(kota_stone_params)

    respond_to do |format|
      if @kota_stone.save
        format.html { redirect_to kota_stones_url, notice: 'Kota stone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kota_stone }
      else
        format.html { render action: 'new' }
        format.json { render json: @kota_stone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kota_stones/1
  # PATCH/PUT /kota_stones/1.json
  def update
    respond_to do |format|
      if @kota_stone.update(kota_stone_params)
        format.html { redirect_to kota_stones_url, notice: 'Kota stone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kota_stone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kota_stones/1
  # DELETE /kota_stones/1.json
  def destroy
    @kota_stone.destroy
    respond_to do |format|
      format.html { redirect_to kota_stones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kota_stone
      @kota_stone = KotaStone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kota_stone_params
      params.require(:kota_stone).permit(:name,:price,:kota_stone_pics,:zoom_image)
    end
end
