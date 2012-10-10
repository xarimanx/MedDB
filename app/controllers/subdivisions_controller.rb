class SubdivisionsController < ApplicationController
  before_filter :find_department
  before_filter :find_subdivision, except: [ :new, :create ]

  def index
  end

  def show
  end

  def new
    @subdivision = @department.subdivisions.build
  end

  def create
    @subdivision = @department.subdivisions.build(params[:subdivision])
    if @subdivision.save
      respond_to do |format|
        format.html { redirect_to [@subdivision.department, @subdivision], notice: "The subdivision was successfully created" }
      end
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @subdivision.update_attributes(params[:subdivision])
      respond_to do |format|
        format.html { redirect_to [@subdivision.department, @subdivision], notice: "The subdivision was successfully updated" }
      end
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def find_department
    @department = Department.find(params[:department_id])
  end

  def find_subdivision
    @subdivision =  Subdivision.find(params[:id])
  end
end
