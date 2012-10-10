class UsersController < ApplicationController
  before_filter :find_user, except: [ :index, :new, :create ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = @department.users.build(params[:user])
    if @user.save
      respond_to do |format|
        format.html { redirect_to @user, notice: "The user was successfully created" }
      end
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      respond_to do |format|
        format.html { redirect_to @user, notice: "The user was successfully updated" }
      end
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
