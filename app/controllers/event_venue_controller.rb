class EventVenueController < ApplicationController
def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@event_venue = EventVenue.new

  end

  def create

  	@event_venue=EventVenue.new(params[:event_venue])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @event_venue.to_json }

  	end

  end


  def update

  	respond_to do |format|

  		if @event_venue.update(event_venue_params)
  			format.html { redirect_to @event_venue, notice: 'Event venue updated'}
  			format.json { render :show, status: :ok, location: @event_venue}
  		else
			format.html { render :edit}
  			format.json { render json:  @event_venue.errors,status: :unprocessable_entity }

  		end
  	end

  end

  def destroy
  	@event_venue.destroy
  	respond_to do |format|
   		format.html { redirect_to event_venue_url, notice: 'Event venue detroyed'}
  		format.json { head :no_content} 		

  	end

  end
end
