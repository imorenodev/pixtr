class ImagesController < ApplicationController

  def new
    @gallery = find_gallery
    @image = Image.new
  end

  def create
    gallery = find_gallery

    gallery.images.create(image_params) #creating an image through the gallery, automatically creates an image and sets the gallery_id value to that of the gallery the image is created through.
    #creating the child image through the parent gallery - helps protect data

    redirect_to gallery # instead of redirect_to gallery_path(gallery)
  end

  def show
    @gallery = find_gallery
    @image = find_image_in(@gallery) #created a method to keep same layer of abstraction for both lines in this show action.
  end

  def edit
    @gallery = find_gallery
    @image = find_image_in(@gallery)
  end

  def update
    gallery = find_gallery
    image = find_image_in(gallery)
    image.update(image_params)

    redirect_to gallery
  end

  def destroy
    gallery = find_gallery
    image = find_image_in(gallery)
    image.destroy

    redirect_to gallery
  end

  private

  def image_params
    params.require(:image).permit(:name, :description, :url)
  end

  def find_gallery
    Gallery.find(params[:gallery_id])
  end

  def find_image_in(gallery)
    image = gallery.images.find(params[:id])
  end

end