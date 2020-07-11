class ProfilesController < ApplicationController
  
  # GET - /users/:user_id/profile
  def show
    redirect_to user_path(params[:user_id])
  end
  
  # GET - /users/:user_id/profile/edit
  def edit
    @profile = Profile.find_by user_id: current_user.id
  end
  
  # PUT/PATCH - /users/:user_id/profile
  # (This request is also made upon pressing the submit button on the 'edit' page)
  def update
    # If profile successfully updated
    if User.find( params[:user_id] ).profile.update_attributes(profile_params)
      # Flash a success message and redirect the user to their profile view
      flash[:success] = "Profile successfully updated."
      redirect_to user_path(params[:user_id])
    else
      # Else refresh the edit view
      flash[:error] = "Error updating your profile; Please try again."
      render action: :edit
    end
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :profile_picture, :job_title, :phone_number, :email, :description)
    end
end