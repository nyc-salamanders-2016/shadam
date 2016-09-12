class ArticlesController < ApplicationController

  def index
    @articles = Article.all

  end



  def new
    @article = Article.new
    set_category
  end

  def create

    @article = Article.new(article_params)
    if @article.save
      redirect_to category_articles_path
    else
      # @errors = @article.errors.full_messages
      redirect_to '/'
    end
  end

  def show
    set_article
    @category = @article.category
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def set_article
      @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:category_id, :id, :body, :price, :email, :title)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

end
