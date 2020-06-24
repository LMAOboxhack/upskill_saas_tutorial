class Contact < ActiveRecord::Base
    # Contact form validations - to ensure form is submitted only if none of the fields are empty.
    validates :name, presence: true
    validates :email, presence: true
    validates :message, presence: true
end