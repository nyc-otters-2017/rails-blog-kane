class ArticlesController < ApplicationController
  def index
    #get '/articles'
    # @articles = Articles.all
    redirect_to '/'
  end

  def new
    #get '/articles/new'
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    #get '/articles/:id'
    @article = Article.find(params[:id])
  end

  def edit
    #get '/articles/:id/edit'
    @article = Article.find(params[:id])
  end

  def update
    #put '/articles/:id'
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    #delete '/articles/:id'
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  
  private
  def article_params
    params.require(:article).permit(:name, :title, :description)
  end
end
