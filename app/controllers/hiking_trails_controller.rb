class HikingTrailsController < ApplicationController
  def index
    @hiking_trails = HikingTrail.all
  end

  def show
    @hiking_trail = HikingTrail.find(params[:id])
  end

  def new
    @hiking_trail = HikingTrail.new
  end

  def create
    @hiking_trail = HikingTrail.new
    @hiking_trail.link = params[:link]
    @hiking_trail.our_rating = params[:our_rating]
    @hiking_trail.our_review = params[:our_review]
    @hiking_trail.location_id = params[:location_id]
    @hiking_trail.description = params[:description]
    @hiking_trail.image = params[:image]

    if @hiking_trail.save
      redirect_to "/hiking_trails", :notice => "Hiking trail created successfully."
    else
      render 'new'
    end
  end

  def edit
    @hiking_trail = HikingTrail.find(params[:id])
  end

  def update
    @hiking_trail = HikingTrail.find(params[:id])

    @hiking_trail.link = params[:link]
    @hiking_trail.our_rating = params[:our_rating]
    @hiking_trail.our_review = params[:our_review]
    @hiking_trail.location_id = params[:location_id]
    @hiking_trail.description = params[:description]
    @hiking_trail.image = params[:image]

    if @hiking_trail.save
      redirect_to "/hiking_trails", :notice => "Hiking trail updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @hiking_trail = HikingTrail.find(params[:id])

    @hiking_trail.destroy

    redirect_to "/hiking_trails", :notice => "Hiking trail deleted."
  end
end
