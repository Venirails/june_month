class AddChanges < ActiveRecord::Migration[6.0]
  def change
  	add_column :marks,:mark3,:integer
  	rename_column :marks,:mark1,:mark_one
  	remove_timestamps :books
  end
end
