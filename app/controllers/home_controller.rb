class HomeController < ApplicationController
  skip_before_action :authenticate_client!

  def index
  end
end
