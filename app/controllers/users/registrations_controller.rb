class Users::RegistrationsController < Devise::RegistrationsController
  before_action :select_plan, only: :new
  def create
    super do |resource|
      # When the extended controller is called, if 'plans' exists in the params,
      # set the user(referred to as 'resource')'s plan_id field to the current value in params.
      if params[:plan]
        resource.plan_id = params[:plan]
        
        # If the user is signing up for a pro plan, run the special save_with_registration
        # method defined in the model, that will save the Customer Token returned by Stripe,
        # along with the user details (user,pass) that are ordinarily saved.
        if resource.plan_id == 2
          resource.save_pro
        else
          resource.save
        end
      end
    end
    # Generate Profile object for new user
    Profile.create(user_id: resource.id, contact_email: resource.email)
  end
  
  private
  def select_plan
    unless (params[:plan] == '1' || params[:plan] == '2')
      flash[:notice] = "Please select a valid plan."
      redirect_to root_url
    end
  end
end

    