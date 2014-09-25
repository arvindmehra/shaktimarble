class MakranaMarbleController < ApplicationController

  def white_marble
    @white_marbles = MakranaMarble.white_marble
  end

  def albeta_marble

    @albeta_marbles = MakranaMarble.albeta_marble
  end

  def dungri_marble
    @dungri_marbles = MakranaMarble.dungri_marble
  end

  def makrana_kumari
  end

  def mateveri_kumari
  end

  def kumari
    @kumari_marbles = MakranaMarble.kumari_marble
  end

  def index
  end

  def new
    @makrana_marble = MakranaMarble.new
  end

  def create
    @makrana_marble = MakranaMarble.new(makrana_marble_params)

    respond_to do |format|
      if @makrana_marble.save
        format.html { redirect_to makrana_marble_index_url, notice: 'Marble product was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @makrana_marble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makrana_marbles/1
  # PATCH/PUT /makrana_marbles/1.json
  def update
    respond_to do |format|
      if @makrana_marble.update(makrana_marble_params)
        format.html { redirect_to @makrana_marble, notice: 'Marble product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @makrana_marble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makrana_marbles/1
  # DELETE /makrana_marbles/1.json
  def destroy
    @makrana_marble.destroy
    respond_to do |format|
      format.html { redirect_to makrana_marbles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makrana_marble
      @makrana_marble = MakranaMarble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makrana_marble_params
      params.require(:makrana_marble).permit(:name, :price,:makrana_marble_pics,:category)
    end
end
