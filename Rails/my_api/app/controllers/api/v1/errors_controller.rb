module Api
  module V1
    class ErrorsController < ApplicationController
      def not_found
        render plain: "Page not found", status: :not_found
      end

      def internal_server_error
        render plain: "Internal server error", status: :internal_server_error
      end
    end
  end
end
