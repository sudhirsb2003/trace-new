class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update_attributes(params[:profile])
    @profile.save
    redirect_to @profile, :notice => "Hahahahaha..."
  end


end
