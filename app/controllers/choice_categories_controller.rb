class ChoiceCategoriesController < ApplicationController
  before_action :set_choice_category, only: [:show, :edit, :update, :destroy]

  # GET /choice_categories
  # GET /choice_categories.json
  def index
    @choice_categories = ChoiceCategory.all
  end

  # GET /choice_categories/1
  # GET /choice_categories/1.json
  def show
  end

  # GET /choice_categories/new
  def new
    @choice_category = ChoiceCategory.new
  end

  # GET /choice_categories/1/edit
  def edit
  end

  # POST /choice_categories
  # POST /choice_categories.json
  def create
    @choice_category = ChoiceCategory.new(choice_category_params)

    respond_to do |format|
      if @choice_category.save
        format.html { redirect_to @choice_category, notice: 'Choice category was successfully created.' }
        format.json { render :show, status: :created, location: @choice_category }
      else
        format.html { render :new }
        format.json { render json: @choice_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choice_categories/1
  # PATCH/PUT /choice_categories/1.json
  def update
    respond_to do |format|
      if @choice_category.update(choice_category_params)
        format.html { redirect_to @choice_category, notice: 'Choice category was successfully updated.' }
        format.json { render :show, status: :ok, location: @choice_category }
      else
        format.html { render :edit }
        format.json { render json: @choice_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choice_categories/1
  # DELETE /choice_categories/1.json
  def destroy

    unless @choice_category.choices.empty? #if has existing items under it
      respond_to do |format|
        format.html { redirect_to choice_categories_url, notice: "#{@choice_category.name} has associated Choices. Cannot Delete." }
        format.json { render json: "#{@choice_category.name} has associated Choices. Cannot Delete.", status: :unprocessable_entity }
      end
    else
      @choice_category.destroy
      respond_to do |format|
        format.html { redirect_to choice_categories_url, notice: 'Choice Category was successfully destroyed.' }
        format.json { head :no_content }
      end
    end


    # @choice_category.destroy
    # respond_to do |format|
    #   format.html { redirect_to choice_categories_url, notice: 'Choice category was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice_category
      @choice_category = ChoiceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_category_params
      params.require(:choice_category).permit(
        :name,
        :description
        )
    end
end
