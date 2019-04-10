class UserController < ApplicationController
  def index
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
  			format.json { render json:  @user.errors,status: :unprocesable }


  end

  def delete

  	

  end

end
