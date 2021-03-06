class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def showbylocation
    @photos = Photo.all
    @loc = params[:id]
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.location_id = params[:location_id]
    @photo.image_url = params[:image_url]

    if @photo.save
      redirect_to "/photos", :notice => "Photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    @photo.location_id = params[:location_id]
    @photo.image_url = params[:image_url]

    if @photo.save
      redirect_to "/photos", :notice => "Photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])

    @photo.destroy

    redirect_to "/photos", :notice => "Photo deleted."
  end
end
