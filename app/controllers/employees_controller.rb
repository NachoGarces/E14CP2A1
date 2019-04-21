class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to @employee.company
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to root_path
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end
end
