class ProfilesController < ApplicationController
  
  # GET - /users/:id/profile
  def show
    @profile = Profile.where(user_id: current_user.id)
  end
  
end