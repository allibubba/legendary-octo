class SlsDataController < ApplicationController
  before_action :set_sls_datum, only: [:show, :update, :destroy]

  # GET /sls_data
  def index
    @sls_data = SlsDatum.all

    render json: @sls_data
  end

  # GET /sls_data/1
  def show
    render json: @sls_datum
  end

  # POST /sls_data
  def create
    @sls_datum = SlsDatum.new(sls_datum_params)

    if @sls_datum.save
      render json: @sls_datum, status: :created, location: @sls_datum
    else
      render json: @sls_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sls_data/1
  def update
    if @sls_datum.update(sls_datum_params)
      render json: @sls_datum
    else
      render json: @sls_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sls_data/1
  def destroy
    @sls_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sls_datum
      @sls_datum = SlsDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sls_datum_params
      params.require(:sls_datum).permit(:name, :org_data_id)
    end
end
