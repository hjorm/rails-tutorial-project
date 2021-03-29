class AdCategoriesController < ApplicationController
  before_action :set_ad_category, only: [:show, :edit, :update, :destroy]

  # GET /ad_categories
  def index
    @ad_categories = AdCategory.all
  end

  # GET /ad_categories/1
  def show
  end

  # GET /ad_categories/new
  def new
    @ad_category = AdCategory.new
  end

  # GET /ad_categories/1/edit
  def edit
  end

  # POST /ad_categories
  def create
    @ad_category = AdCategory.new(ad_category_params)

    if @ad_category.save
      redirect_to @ad_category, notice: 'Ad category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ad_categories/1
  def update
    if @ad_category.update(ad_category_params)
      redirect_to @ad_category, notice: 'Ad category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ad_categories/1
  def destroy
    @ad_category.destroy
    redirect_to ad_categories_url, notice: 'Ad category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_category
      @ad_category = AdCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_category_params
      params.require(:ad_category).permit(:name)
    end
end
