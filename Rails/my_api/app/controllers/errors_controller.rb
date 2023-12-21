class ErrorsController < ApplicationController
  def not_found
    render plain: "Page not found", status: :not_found
  end
end
