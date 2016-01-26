class MediaItemsController < ApplicationController
  before_action :set_media_item, only: [:show, :edit, :update, :destroy]

  # GET /media_items
  # GET /media_items.json
  def index
    @media_items = MediaItem.all
  end

  # GET /media_items/1
  # GET /media_items/1.json
  def show
  end

  # GET /media_items/new
  def new
    @media_item = MediaItem.new
  end

  # GET /media_items/1/edit
  def edit
  end

  # POST /media_items
  # POST /media_items.json
  def create

    @media_item = MediaItem.new(media_item_params)
       
    set_relations

    respond_to do |format|
      if @media_item.save
        format.html { redirect_to @media_item, notice: 'Media item was successfully created.' }
        format.json { render :show, status: :created, location: @media_item }
      else
        format.html { render :new }
        format.json { render json: @media_item.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /media_items/1
  # PATCH/PUT /media_items/1.json
  def update
    @media_item.update(media_item_params)
    
    set_relations

    respond_to do |format|
      if @media_item.save
        format.html { redirect_to @media_item, notice: 'Media item was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_item }
      else
        format.html { render :edit }
        format.json { render json: @media_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_items/1
  # DELETE /media_items/1.json
  def destroy
    @media_item.destroy
    respond_to do |format|
      format.html { redirect_to media_items_url, notice: 'Media item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_item
      @media_item = MediaItem.find(params[:id])
    end

    # set the model relation values
    def set_relations
      params[:media_type] ? @media_item.media_type = MediaType.find(params[:media_type]) : "" # set media type if present
      params[:arts_types] ? @media_item.arts_types = ArtsType.find(params[:arts_types].select{|key, value| value == "1" }.keys) : ""  # set arts types if present
      params[:moods] ? @media_item.moods = Mood.find(params[:moods].select{|key, value| value == "1" }.keys) : "" # set moods if present
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_item_params
      params.require(:media_item).permit(
        :name,
        :description
      )
    end
end
