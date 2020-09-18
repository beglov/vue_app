class ClientsController < ApplicationController
  before_action :authenticate_client!

  def dashboard
  end
end
