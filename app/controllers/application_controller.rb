class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  
  def json_form(model, path, errors = [])
    {
      errors: errors,
      foster: model,
      path: path,
      token: form_authenticity_token
    }
  end
  helper_method :json_form
end