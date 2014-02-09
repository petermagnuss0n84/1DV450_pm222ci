class AddIndexToResourceTable < ActiveRecord::Migration
  def change
  	add_index("resources", "user_id")
  	add_index("resources", "resource_type_id")
  	add_index("resources", "licence_id")
  end
end
