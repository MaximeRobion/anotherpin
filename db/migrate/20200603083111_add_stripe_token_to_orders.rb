class AddStripeTokenToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :stripe_token, :string
  end
end
