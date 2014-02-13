class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string "firstname", :limit => 30
    	t.string "surname", :limit => 45
    	t.string "email", :null => false
    	t.string "password_digest", :null => false

      t.timestamps
    end
  end
end
