class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to image_path(@image)
  end

  def image_params
    params.require(:image).permit(:name)
  end

end
