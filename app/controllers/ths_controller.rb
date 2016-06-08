class ThsController < ApplicationController
  before_action :set_th, only: [:show, :update, :destroy]

  # GET /ths
  def index
    @ths = Th.all

    render json: @ths
  end

  # GET /ths/1
  def show
    render json: @th
  end

  # POST /ths
  def create
    @th = Th.new(th_params)

    if @th.save
      render json: @th, status: :created, location: @th
    else
      render json: @th.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ths/1
  def update
    if @th.update(th_params)
      render json: @th
    else
      render json: @th.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ths/1
  def destroy
    @th.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_th
      @th = Th.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def th_params
      params.require(:th).permit(:name, :sls_datum_id)
    end
end
