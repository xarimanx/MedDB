class HospitalsController < ApplicationController
  before_filter :find_hospital, except: [ :index, :new, :create ]

  def index
    @hospitals = Hospital.all
  end

  def show
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(params[:hospital])
    if @hospital.save
      respond_to do |format|
        format.html { redirect_to @hospital, notice: "The hospital was successfully created" }
      end
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @hospital.update_attributes(params[:hospital])
      respond_to do |format|
        format.html { redirect_to @hospital, notice: "The hospital was successfully updated" }
      end
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def find_hospital
    @hospital = Hospital.find(params[:id])
  end
end
