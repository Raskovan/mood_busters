class MoodsController < ApplicationController

  def index
    @moods = Mood.all
  end

  def show
    @mood = Mood.find_by(id: params[:id])
  end

  def new
    @mood = Mood.new
  end

  def create
    @mood = Mood.new(mood_params)
    @mood.save
    redirect_to mood_path(@mood)
  end

  def destroy
    @mood = Mood.find_by(id: params[:id])
    @mood.destroy
    redirect_to moods_path
  end

  private

  def mood_params
    params.require(:mood).permit(:name)
  end


end
