class AddCategoryIdToTweetsTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :tweets, :category_id, :integer
  end
end
