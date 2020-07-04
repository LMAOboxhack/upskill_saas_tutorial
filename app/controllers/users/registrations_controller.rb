class Users::RegistrationsController < Devise::RegistrationsController
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
  end
end

    