class AddConfirmationFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_token, :string
  end
end
