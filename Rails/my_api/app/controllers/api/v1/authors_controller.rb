module Api
  module V1
    class AuthorsController < ApplicationController
      before_action :set_author, only: %i[ show update destroy ]
      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

      # GET /authors
      def index
        @authors = Author.all

        render json: @authors, include: ['articles']
      end

      # GET /authors/1
      def show
        render json: @author
      end

      # POST /authors
      def create
        @author = Author.new(author_params)

        if @author.save
          render json: @author, status: :created
        else
          render json: @author.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /authors/1
      def update
        if @author.update(author_params)
          render json: @author
        else
          render json: @author.errors, status: :unprocessable_entity
        end
      end

      # DELETE /authors/1
      def destroy
        @author.destroy!
        render plain: "Author deleted successfully."
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_author
        @author = Author.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def author_params
        params.require(:author).permit(:name)
        # params.fetch(:author, {:name})
      end

      def record_not_found(e)
        render json:{ errors: e }, status: :unprocessable_entity
      end
    end
  end
end
