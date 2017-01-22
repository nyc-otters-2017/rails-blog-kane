class ArticlesController < ApplicationController
  def index
    #get '/articles'
    @articles = Articles.all
  end

  def new
    #get '/articles/new'
  end

  def create
    #post '/articles'
    # @article = Article.new(params[:article])
    # render plain: params[:article].inspect
    @article = Article.new(article_params)

    @article.save
    redirect_to @article

  end

  def show
    #get '/articles/:id'
    @article = Article.find(params[:id])
  end

  def edit
    #get '/articles/:id/edit'
  end

  def update
    #put '/articles/:id'
  end

  def destroy
    #delete '/articles/:id'
  end
end

private
  def article_params
    params.require(:article).permit(:name, :title, :description)
  end
