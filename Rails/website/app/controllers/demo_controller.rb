class DemoController < ApplicationController
  def index
    @arr = Demo.all
  end

  def show
    @demo = Demo.find(params[:id])
    @demo.increment!(:viewers)
  end
end
