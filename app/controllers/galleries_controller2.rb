class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def destroy
    gallery = Gallery.find(params[:id])
    gallery.destroy
    redirect_to galleries_path #path helper
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to galleries_path
    else
      render :new
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
    @images = @gallery.images #array of active record objects of 'image' instances (ActiveRecord::Associations:CollectionProxy)
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    gallery = Gallery.find(params[:id])
    gallery.update(gallery_params)
    redirect_to "/galleries/#{gallery.id}"
  end

  private

  def gallery_params
    params.
    require(:gallery).
    permit(:name, :description)
  end
end