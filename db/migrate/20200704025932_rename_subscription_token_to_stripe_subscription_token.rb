class RenameSubscriptionTokenToStripeSubscriptionToken < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :subscription_token, :stripe_subscription_token
  end
end
