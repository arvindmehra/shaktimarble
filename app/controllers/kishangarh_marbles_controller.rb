class KishangarhMarblesController < ApplicationController
  before_action :set_kishangarh_marble, only: [:show, :edit, :update, :destroy]

  # GET /kishangarh_marbles
  # GET /kishangarh_marbles.json
  def index
    @kishangarh_marbles = KishangarhMarble.all
  end

  def morwad_marble
    @morwad_marbles = KishangarhMarble.morwad_marble
  end

  def aarna
    @aarna_marbles = KishangarhMarble.aarna
  end

  def dharmeta
    @dharmeta_marbles = KishangarhMarble.dharmeta
  end

  def toronto
    @toronto_marbles = KishangarhMarble.toronto
  end

  def katni
    @katni_marbles = KishangarhMarble.katni
  end

  def sawar_marble
    @sawar_marbles = KishangarhMarble.sawar_marble
  end

  def pink_marble
    @pink_marbles = KishangarhMarble.pink_marble
  end


  # GET /kishangarh_marbles/1
  # GET /kishangarh_marbles/1.json
  def show
  end

  # GET /kishangarh_marbles/new
  def new
    @kishangarh_marble = KishangarhMarble.new
  end

  # GET /kishangarh_marbles/1/edit
  def edit
  end

  # POST /kishangarh_marbles
  # POST /kishangarh_marbles.json
  def create
    @kishangarh_marble = KishangarhMarble.new(kishangarh_marble_params)

    respond_to do |format|
      if @kishangarh_marble.save
        format.html { redirect_to kishangarh_marbles_url, notice: 'Kishangarh marble was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kishangarh_marble }
      else
        format.html { render action: 'new' }
        format.json { render json: @kishangarh_marble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kishangarh_marbles/1
  # PATCH/PUT /kishangarh_marbles/1.json
  def update
    respond_to do |format|
      if @kishangarh_marble.update(kishangarh_marble_params)
        format.html { redirect_to @kishangarh_marble, notice: 'Kishangarh marble was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kishangarh_marble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kishangarh_marbles/1
  # DELETE /kishangarh_marbles/1.json
  def destroy
    @kishangarh_marble.destroy
    respond_to do |format|
      format.html { redirect_to kishangarh_marbles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kishangarh_marble
      @kishangarh_marble = KishangarhMarble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kishangarh_marble_params
      params.require(:kishangarh_marble).permit(:name, :price,:kishangarh_marble_pics,:category)
    end
end
