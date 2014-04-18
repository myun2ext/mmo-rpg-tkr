class MapChipsController < ApplicationController
  before_action :set_map_chip, only: [:show, :edit, :update, :destroy]

  # GET /map_chips
  # GET /map_chips.json
  def index
    @map_chips = MapChip.all
  end

  # GET /map_chips/1
  # GET /map_chips/1.json
  def show
  end

  # GET /map_chips/new
  def new
    @map_chip = MapChip.new
  end

  # GET /map_chips/1/edit
  def edit
  end

  # POST /map_chips
  # POST /map_chips.json
  def create
    @map_chip = MapChip.new(map_chip_params)

    respond_to do |format|
      if @map_chip.save
        format.html { redirect_to @map_chip, notice: 'Map chip was successfully created.' }
        format.json { render :show, status: :created, location: @map_chip }
      else
        format.html { render :new }
        format.json { render json: @map_chip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_chips/1
  # PATCH/PUT /map_chips/1.json
  def update
    respond_to do |format|
      if @map_chip.update(map_chip_params)
        format.html { redirect_to @map_chip, notice: 'Map chip was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_chip }
      else
        format.html { render :edit }
        format.json { render json: @map_chip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_chips/1
  # DELETE /map_chips/1.json
  def destroy
    @map_chip.destroy
    respond_to do |format|
      format.html { redirect_to map_chips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_chip
      @map_chip = MapChip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_chip_params
      params.require(:map_chip).permit(:name)
    end
end
