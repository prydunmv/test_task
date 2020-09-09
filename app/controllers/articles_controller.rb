class ArticlesController < ApplicationController
before_action :article, only: %i[show edit update destroy]
before_action :authenticate_user!

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: 'Article was successfully destroyed.'
  end

  private

  def article
    @article ||= Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :user_id)
  end
end
