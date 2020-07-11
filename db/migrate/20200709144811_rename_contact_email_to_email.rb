class RenameContactEmailToEmail < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :contact_email, :email
  end
end
