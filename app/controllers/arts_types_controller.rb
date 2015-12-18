class ArtsTypesController < ApplicationController
  before_action :set_arts_type, only: [:show, :edit, :update, :destroy]

  # GET /arts_types
  # GET /arts_types.json
  def index
    @arts_types = ArtsType.all
  end

  # GET /arts_types/1
  # GET /arts_types/1.json
  def show
  end

  # GET /arts_types/new
  def new
    @arts_type = ArtsType.new
  end

  # GET /arts_types/1/edit
  def edit
  end

  # POST /arts_types
  # POST /arts_types.json
  def create
    @arts_type = ArtsType.new(arts_type_params)

    respond_to do |format|
      if @arts_type.save
        format.html { redirect_to @arts_type, notice: 'Arts type was successfully created.' }
        format.json { render :show, status: :created, location: @arts_type }
      else
        format.html { render :new }
        format.json { render json: @arts_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arts_types/1
  # PATCH/PUT /arts_types/1.json
  def update
    respond_to do |format|
      if @arts_type.update(arts_type_params)
        format.html { redirect_to @arts_type, notice: 'Arts type was successfully updated.' }
        format.json { render :show, status: :ok, location: @arts_type }
      else
        format.html { render :edit }
        format.json { render json: @arts_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arts_types/1
  # DELETE /arts_types/1.json
  def destroy
    @arts_type.destroy
    respond_to do |format|
      format.html { redirect_to arts_types_url, notice: 'Arts type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arts_type
      @arts_type = ArtsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arts_type_params
      params.require(:arts_type).permit(
        :name,
        :description
        )
    end
end
