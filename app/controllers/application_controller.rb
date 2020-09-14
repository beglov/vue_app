class ApplicationController < ActionController::Base
  before_action :authenticate_client!

  layout :layout

  private

  def layout
    is_a?(Devise::SessionsController) ? 'logon' : 'application'
  end
end
