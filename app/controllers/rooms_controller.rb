class RoomsController < ApplicationController
  before_filter :find_subdivision
  before_filter :find_room, except: [ :new, :create ]

  def index
  end

  def show
  end

  def new
    @room = @subdivision.rooms.build
  end

  def create
    @room = @subdivision.rooms.build(params[:room])
    if @room.save
      respond_to do |format|
        format.html { redirect_to [@room.subdivision, @room], notice: "The room was successfully created" }
      end
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @room.update_attributes(params[:room])
      respond_to do |format|
        format.html { redirect_to [@room.subdivision, @room], notice: "The room was successfully updated" }
      end
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def find_subdivision
    @subdivision = Subdivision.find(params[:subdivision_id])
  end

  def find_room
    @room =  Room.find(params[:id])
  end
end
