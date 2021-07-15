require "net/http"
require "json"

class CourtsController < ApplicationController
  before_action :set_court, only: [:show, :update, :destroy]

  # GET /courts
  def index
    @courts = Court.all

    render json: @courts
  end

  # GET /courts/1
  def show
    render json: @court
  end

  # POST /courts
  def create
    #pull out lat/long values
    latitude = court_params[:latitude]
    longitude = court_params[:longitude]

    #API
    revGeo = ENV["location_info"]
    # convert coordinates to address from api
    response = Net::HTTP.get(URI("https://api.tomtom.com/search/2/reverseGeocode/#{latitude}%2C#{longitude}.json?returnSpeedLimit=false&key=#{revGeo}"))
    #return json
    result = JSON.parse(response)

    #api data 
    addresses = result["addresses"][0]
    address = addresses["address"]
    #full address from api data 
    street_address = address.find{|e| e.include?("freeformAddress")}
    
    #action controller locks params so need to create a new obj to alter values 
    new_court_params = court_params.to_h
    #add street address 
    new_court_params[:street] = street_address[1]

    @court = Court.new(new_court_params)
   
    if @court.save
      render json: @court, status: :created, location: @court
    else
      render json: @court.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courts/1
  def update
    if @court.update(court_params)
      render json: @court
    else
      render json: @court.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courts/1
  def destroy
    @court.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_court
      @court = Court.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def court_params
      params.require(:court).permit(:latitude, :longitude, :indoor, :fee, :public, :bathrooms, :stars, :levelplay, :notes, :title, :street)
    end
end
