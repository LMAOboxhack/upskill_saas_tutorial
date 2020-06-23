class ContactMailer < ActionMailer::Base
    default to: 'linfangyuan99@gmail.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        email(from: email, subject: 'New message from #{email}')
    end
end