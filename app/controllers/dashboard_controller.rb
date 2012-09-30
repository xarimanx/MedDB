class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def show
    @hospitals = Hospital.all
  end
end
