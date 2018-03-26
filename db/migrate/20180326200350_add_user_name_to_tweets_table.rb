class AddUserNameToTweetsTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :tweets, :user_name, :string
  end
end
