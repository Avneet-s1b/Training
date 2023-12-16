class DemoController < ApplicationController
  def index
    @arr = Demo.all
  end

  def show
    @demo = Demo.find(params[:id])
    # @demo.increment!(:viewers)
    IncrementService.new(@demo).increment_viewers
  end
end
