#The provider and uid fields help to identify a user uniquely as this pair will always have unique values.

class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    add_column(:users, :provider, :string, limit: 50, null: false, default: '')
    add_column(:users, :uid, :string, limit: 500, null: false, default: '')
  end
end
