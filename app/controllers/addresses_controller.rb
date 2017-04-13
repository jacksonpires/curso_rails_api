class AddressesController < ApplicationController
  before_action :set_address

  # GET /address/1
  def show
    render json: @address
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Contact.find(params[:contact_id]).address
    end
end
