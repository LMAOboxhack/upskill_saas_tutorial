class ContactsController < ApplicationController
    
    # GET request to /contact-us
    # Show new empty contact form
    def new
        @contact = Contact.new
    end
    
    # POST request /contacts
    def create
        # Mass assignment of  (filled) form fills to Contact object
        @contact = Contact.new(contact_params)
        # Save Contact object to database
        if @contact.save #If save to database successful:
            # Grab form fields from params hash
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:message]
            # Use mailer methods to compose email in HTML & send out the email
            ContactMailer.contact_email(name, email, body).deliver
            # Add success message to 'flash' hash running in background
            flash[:success] = "Message sent!"
            # Run 'new' method to show customer new empty contact form, with the added success message
            redirect_to new_contact_path
        else # Else, if save to database unsuccessful:
            # Add error message to background flash hash
            flash[:danger] = @contact.errors.full_messages.join(".<br>") + "."
            # Run 'new' method to show customer new empty contact form, with the added error message
            redirect_to new_contact_path
        end
    end
    
    private
        # To grab data from the form, this is a required Ruby best practice for security
        # This method is known as using strong paramters & whitelisting the form fields
        def contact_params
            params.require(:contact).permit(:name, :email, :message)
        end
end