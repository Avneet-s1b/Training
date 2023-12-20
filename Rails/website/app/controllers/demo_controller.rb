class DemoController < ApplicationController
  def index
    @arr = Demo.all

    ViewersManager::DecrementService.call(@arr.first)
  end

  def show
    @demo = Demo.find(params[:id])
    # @demo.increment!(:viewers)
    # IncrementService.new(@demo).increment_viewers
    # This is kind of a proc call where we made increment_service class inherit from Application service which we also created in order to customize service like this.
    ViewersManager::IncrementService.call(@demo)
  end
end
