class TicketTypeController < ApplicationController
def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@ticket_type = TicketType.new

  end

  def create

  	@ticket_type=TicketType.new(params[:ticket_type])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @ticket_type.to_json }

  	end

  end


  def update

  	respond_to do |format|

  		if @ticket_type.update(ticket_type_params)
  			format.html { redirect_to @ticket_type, notice: 'ticket_type updated'}
  			format.json { render :show, status: :ok, location: @ticket_type}
  		else
			format.html { render :edit}
  			format.json { render json:  @ticket_type.errors,status: :unprocessable_entity }

  		end
  	end

  end

  def destroy
  	@ticket_type.destroy
  	respond_to do |format|
   		format.html { redirect_to ticket_type_url, notice: 'ticket_type detroyed'}
  		format.json { head :no_content} 		

  	end

  

  end
end
