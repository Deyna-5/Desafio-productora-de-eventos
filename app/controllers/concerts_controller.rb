class ConcertsController < ApplicationController

  def index
  end

  def new
    @concert = Concert.new
    @groups = Group.all
  end

  def create
    @concert =  Concert.new(concert_params)
    @concert.save
    redirect_to root_path
  end

  def edit
    @concert = Concert.find(params[:id])
    @groups = Group.all
  end

  def update
    @concert = Concert.find(params[:id])
    @concert.update(concert_params)
    redirect_to root_path
  end

  def destroy
  end

  private
    def concert_params
      params.require(:concert).permit(:name, :duration, :audience, :event_date, :group_id)
    end
end
