class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  # GET /destinations
  # GET /destinations.json
  def index
    @destinations = Destination.all
    @hash = Gmaps4rails.build_markers(@destinations) do |destination, marker|
      marker.lat destination.latitude
      marker.lng destination.longitude
      marker.infowindow "#{destination.getInfoWindowHtml}"
      marker.picture({
        :url     => "http://www2.psd100.com/ppp/2013/10/0501/Open-book-icon-1005102438.png",
        :width   => 32,
        :height  => 27
        })
    end
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
  end

  def favorite
   destination = Destination.find(params[:id])
   current_user.destinations << destination.book
   current_user ? redirect_to(current_user) : redirect_to(signup_path)
  end

  # GET /destinations/new
  def new
    @destination = Destination.new
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @destination = Destination.new(destination_params)
    @destination.user = current_user

    respond_to do |format|
      if @destination.save
        format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.require(:destination).permit(:city, :country, :books, user_ids: [])
    end
end
