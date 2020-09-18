class EmployeesController < ApplicationController
  before_action :authenticate_employee!

  def dashboard
    respond_to do |format|
      format.html
      format.json do
        render json: {
          current_user: current_employee,
          clients: Client.all,
        }
      end
    end
  end
end
