class MapItemsController < ApplicationController
  before_action :set_map_item, only: [:show, :edit, :update, :destroy]

  # GET /map_items
  # GET /map_items.json
  def index
    @map_items = MapItem.all
  end

  # GET /map_items/1
  # GET /map_items/1.json
  def show
  end

  # GET /map_items/new
  def new
    @map_item = MapItem.new
    @map_item.map = Map.new
  end

  # GET /map_items/1/edit
  def edit
  end

  # POST /map_items
  # POST /map_items.json
  def create
    @map_item = MapItem.new(map_item_params)

    respond_to do |format|
      if @map_item.save
        format.html { redirect_to @map_item, notice: 'Map item was successfully created.' }
        format.json { render :show, status: :created, location: @map_item }
      else
        format.html { render :new }
        format.json { render json: @map_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_items/1
  # PATCH/PUT /map_items/1.json
  def update
    respond_to do |format|
      if @map_item.update(map_item_params)
        format.html { redirect_to @map_item, notice: 'Map item was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_item }
      else
        format.html { render :edit }
        format.json { render json: @map_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_items/1
  # DELETE /map_items/1.json
  def destroy
    @map_item.destroy
    respond_to do |format|
      format.html { redirect_to map_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_item
      @map_item = MapItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_item_params
      params.require(:map_item).permit(:map_chip_id, :x, :y)
    end
end
