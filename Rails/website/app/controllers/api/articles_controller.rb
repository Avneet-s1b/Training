class Api::ArticlesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    article = Article.all
    if article
      render json: article, status: 200
    else
      render json:{
        error:"Error showing all records..."
      }
    end
  end

  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: article, status: 200
    else
      render json:{
        error:"Error showing..."
      }
    end
  end

  def create
    article = Article.new(
      title: article_params[:title],
      body: article_params[:body]
    )

    if article.save
      render json: article, status: 200
    else
      render json:{
        error: "Error creating..."
      }
    end
  end

  def update
    article = Article.find_by(id: params[:id])
    if article
      article.update(title:article_params[:title], body: article_params[:body])
      render json: article , status: 200
    else
      render json:{
        error:"Error updating this record..."
      }
    end
  end

  def destroy
    article = Article.find_by(id: params[:id])
    if article
      article.destroy
      render json: "article destroyed <3"
    end
  end

  private 
  def article_params
    params.require(:article).permit([
      :title,
      :body
    ])
  end
end
