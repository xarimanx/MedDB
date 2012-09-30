class DepartmentsController < ApplicationController
  before_filter :find_department, except: [ :new, :create ]

  def index
  end

  def show
  end

  def new
    @department = Hospital.find(params[:hospital_id]).departments.build
  end

  def create
    @department = Hospital.find(params[:hospital_id]).departments.build(params[:department])
    if @department.save
      respond_to do |format|
        format.html { redirect_to [@department.hospital, @department], notice: "The department was successfully created" }
      end
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @department.update_attributes(params[:department])
      respond_to do |format|
        format.html { redirect_to [@department.hospital, @department], notice: "The department was successfully updated" }
      end
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def find_department
    @department = Department.find(params[:id])
  end
end
