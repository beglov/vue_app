module ApplicationHelper
  def js_pack
    if current_client
      'client'
    elsif current_employee
      'employee'
    else
      'application'
    end
  end
end
