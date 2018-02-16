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

  def edit
    @image = Image.find_by(id: params[:id])
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.update(image_params)
    redirect_to images_path
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy
    redirect_to images_path
  end

  private



  def image_params
    params.require(:image).permit(:name, :mood_id)
  end

end
