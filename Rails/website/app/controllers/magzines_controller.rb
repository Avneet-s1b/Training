class MagzinesController < ApplicationController
  before_action :set_magzine, only: %i[ show edit update destroy ]

  # GET /magzines or /magzines.json
  def index
    @magzines = Magzine.all
  end

  # GET /magzines/1 or /magzines/1.json
  def show
  end

  # GET /magzines/new
  def new
    @magzine = Magzine.new
  end

  # GET /magzines/1/edit
  def edit
  end

  # POST /magzines or /magzines.json
  def create
    @magzine = Magzine.new(magzine_params)

    respond_to do |format|
      if @magzine.save
        format.html { redirect_to magzine_url(@magzine), notice: "Magzine was successfully created." }
        format.json { render :show, status: :created, location: @magzine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @magzine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magzines/1 or /magzines/1.json
  def update
    respond_to do |format|
      if @magzine.update(magzine_params)
        format.html { redirect_to magzine_url(@magzine), notice: "Magzine was successfully updated." }
        format.json { render :show, status: :ok, location: @magzine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @magzine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magzines/1 or /magzines/1.json
  def destroy
    @magzine.destroy!

    respond_to do |format|
      format.html { redirect_to magzines_url, notice: "Magzine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magzine
      @magzine = Magzine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def magzine_params
      params.require(:magzine).permit(:name)
    end
end
