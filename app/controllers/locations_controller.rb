class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    render('_location_panel_overview')
  end

  def showbyprice
    @locations = Location.all

  end

    def showbyrating
    @locations = Location.all

  end

    def showbycategory
    @locations = Location.all

  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.category = params[:category]
    @location.our_review = params[:our_review]
    @location.destination_summary = params[:destination_summary]
    @location.our_rating = params[:our_rating]
    @location.price = params[:price]
    @location.city_country = params[:city_country]
    @location.date = params[:date]
    @location.image = params[:image]

    if @location.save
      redirect_to "/locations", :notice => "Location created successfully."
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])

    @location.category = params[:category]
    @location.our_review = params[:our_review]
    @location.destination_summary = params[:destination_summary]
    @location.our_rating = params[:our_rating]
    @location.price = params[:price]
    @location.city_country = params[:city_country]
    @location.date = params[:date]
    @location.image = params[:image]

    if @location.save
      redirect_to "/locations", :notice => "Location updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    redirect_to "/locations", :notice => "Location deleted."
  end
end
