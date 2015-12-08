class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new
    @hotel.description = params[:description]
    @hotel.link = params[:link]
    @hotel.our_rating = params[:our_rating]
    @hotel.our_review = params[:our_review]
    @hotel.location_id = params[:location_id]
    @hotel.image = params[:image]

    if @hotel.save
      redirect_to "/hotels", :notice => "Hotel created successfully."
    else
      render 'new'
    end
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def update
    @hotel = Hotel.find(params[:id])

    @hotel.description = params[:description]
    @hotel.link = params[:link]
    @hotel.our_rating = params[:our_rating]
    @hotel.our_review = params[:our_review]
    @hotel.location_id = params[:location_id]
    @hotel.image = params[:image]

    if @hotel.save
      redirect_to "/hotels", :notice => "Hotel updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @hotel = Hotel.find(params[:id])

    @hotel.destroy

    redirect_to "/hotels", :notice => "Hotel deleted."
  end
end
