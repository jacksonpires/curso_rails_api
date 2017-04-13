class PhonesController < ApplicationController
  before_action :set_phones

  # GET /phones/1
  def show
    render json: @phones
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phones
      @phones = Contact.find(params[:contact_id]).phones
    end
end
