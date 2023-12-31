module Api
  module V1
    class ArticlesController < ApplicationController
      before_action :set_article, only: %i[ show update destroy ]
      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

      # GET /articles
      def index
        # @articles = Article.all
        a = Author.find(params[:author_id])
        @articles = a.articles
        render json: @articles
      end

      # GET /articles/1
      def show
        if stale?(last_modified: @article.updated_at)
          render json: @article #this block will be executed since stale checks if our record is stale that is old using last modified param and if yes then if is executed.
        end
      # rescue ActiveRecord::RecordNotFound
      #   flash[:alert] = 'User not found'
      #   redirect_to api_v1_articles_path  
      end

      # POST /articles
      def create
        # @article = Article.new(article_params)
        @author = Author.find(params[:author_id])
        @article = @author.articles.create(article_params)

        if @article.save
          render json: @article, status: :created
        else
          render json: @article.errors, status: :unprocessable_entity
          # redirect_to url_for(controller:'error', action:'internal_server_error')
          # redirect_to api_v1_500_url
        end
      end

      # PATCH/PUT /articles/1
      def update
        if @article.update(article_params)
          render json: @article
        else
          render json: @article.errors, status: :unprocessable_entity
        end
      end

      # DELETE /articles/1
      def destroy
        @article.destroy!

        render plain: "Article deleted successfully"
        # @author = Author.find(params[:author_id])
        # @article = @author.articles.create(article_params)
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = Article.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def article_params
        params.require(:article).permit(:title, :body, :author_id)
      end

      def record_not_found(e)
        render json:{ errors: e }, status: :unprocessable_entity
      end
    end
  end
end
