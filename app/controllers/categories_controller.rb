class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end



  def new
    @category = Category.new

  end

  def create

    # @category = Category.find(params[:category_id])
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      # @errors = @article.errors.full_messages
      redirect_to '/'
    end
  end

  def show
    set_category

  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def set_category
      @category = Category.find(params[:id])
    end

  def category_params
    params.require(:category).permit(:name)
  end

end
