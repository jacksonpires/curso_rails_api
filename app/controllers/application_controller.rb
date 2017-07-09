class ApplicationController < ActionController::API

  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :ensure_json_request

  def ensure_json_request
    unless request.headers["Accept"] =~ /vnd\.api\+json/
      render body: nil, :status => 406
    else
      unless request.get?
        return if request.headers["Content-Type"] =~ /vnd\.api\+json/
        render body: nil, :status => 415
      end
    end
  end

end
