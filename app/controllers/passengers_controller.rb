class PassengersController < ApplicationController

  def index
   user = User.where("lower(full_name) like ?", "%#{params[:q].downcase}%").select("id, full_name as name") if params[:q]
    respond_to do |format|
     format.json { render json: user }
   end
  end

  def create
   user_ids = params[:users].split(",").reject(&:empty?)
   users = User.where("id IN(?)" , user_ids)
   user_lists = []
    users.each do |user_id|
     @passenger = Passenger.create(params[:passenger])
     @passenger.user_id = user_id.id
     @passenger.save
     user_lists << @passenger.user.full_name
 	  end
     if @passenger.save
    	  redirect_to root_path, notice: 'Pick up point was successfully created.'
  	 else
   			redirect_to root_path, notice: 'something went wrong !'
     end

  end

end
