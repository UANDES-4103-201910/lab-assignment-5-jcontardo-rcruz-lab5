class TicketController < ApplicationController
def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@ticket = Ticket.new

  end

  def create

  	@ticket=Ticket.new(params[:ticket])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @ticket.to_json }

  	end

  end


  def update

  	respond_to do |format|

  		if @ticket.update(ticket_params)
  			format.html { redirect_to @ticket, notice: 'Ticket updated'}
  			format.json { render :show, status: :ok, location: @ticket}
  		else
			format.html { render :edit}
  			format.json { render json:  @ticket.errors,status: :unprocessable_entity }

  		end
  	end

  end

  def destroy
  	@ticket.destroy
  	respond_to do |format|
   		format.html { redirect_to ticket_url, notice: 'Ticket detroyed'}
  		format.json { head :no_content} 		

  	end

  end
end
