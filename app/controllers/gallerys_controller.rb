class GallerysController < ApplicationController
  before_action :find_gallery_id, only: [:show, :edit, :update]
  def index
    @gallerys = Gallery.all
  end

  def show
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to gallery_path(@gallery)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @gallery.update(gallery_params)
      redirect_to gallery_path(@gallery)
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def find_gallery_id
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:name, photo: [])
  end
end
