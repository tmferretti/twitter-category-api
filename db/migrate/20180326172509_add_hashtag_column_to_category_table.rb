class AddHashtagColumnToCategoryTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :hashtag, :string
  end
end
