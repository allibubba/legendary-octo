class OrgDataController < ApplicationController
  before_action :set_org_datum, only: [:show, :update, :destroy]

  # GET /org_data
  def index
    @org_data = OrgDatum.all

    render json: @org_data
  end

  # GET /org_data/1
  def show
    render json: @org_datum
  end

  # POST /org_data
  def create
    @org_datum = OrgDatum.new(org_datum_params)

    if @org_datum.save
      render json: @org_datum, status: :created, location: @org_datum
    else
      render json: @org_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /org_data/1
  def update
    if @org_datum.update(org_datum_params)
      render json: @org_datum
    else
      render json: @org_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /org_data/1
  def destroy
    @org_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org_datum
      @org_datum = OrgDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def org_datum_params
      params.require(:org_datum).permit(:name, :address)
    end
end
