class UserController < ApplicationController
  def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@user = User.new

  end

  def create

  	@user=User.new(params[:user])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @user.to_json }

  	end

  end


  def update

  	respond_to do |format|

  		if @user.update(user_params)
  			format.html { redirect_to @user, notice: 'User updated'}
  			format.json { render :show, status: :ok, location: @user}
  		else
			format.html { render :edit}
  			format.json { render json:  @user.errors,status: :unprocessable_entity }

  		end
  	end

  end

  def destroy
  	@user.destroy
  	respond_to do |format|
   		format.html { redirect_to user_url, notice: 'User detroyed'}
  		format.json { head :no_content} 		

  	end

  end

end
