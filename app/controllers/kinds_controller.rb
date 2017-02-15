class KindsController < ApplicationController
  before_action :set_kind, only: [:show, :update, :destroy]

  # GET /kinds
  def index
    @kinds = Kind.all

    render json: @kinds
  end

  # GET /kinds/1
  def show
    render json: @kind
  end

  # POST /kinds
  def create
    @kind = Kind.new(kind_params)

    if @kind.save
      render json: @kind, status: :created, location: @kind
    else
      render json: @kind.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kinds/1
  def update
    if @kind.update(kind_params)
      render json: @kind
    else
      render json: @kind.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kinds/1
  def destroy
    @kind.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind
      @kind = Kind.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kind_params
      params.require(:kind).permit(:description)
    end
end
