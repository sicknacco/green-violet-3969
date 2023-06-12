class FlightPassengersController < ApplicationController
  def destroy
    @flight = Flight.find(params[:flight_id])
    @passenger = Passenger.find(params[:id])
    @flight.passengers.destroy(@passenger)
    redirect_to(flights_path)
  end
end