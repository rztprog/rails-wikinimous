class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.order("id DESC").all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path()
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to root_path()
  end

  def destroy
    @article.destroy
    redirect_to root_path()
  end

  def destroy_all
    Article.destroy_all
    redirect_to root_path()
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
