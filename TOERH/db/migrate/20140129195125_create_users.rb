class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string "firstname", :limit => 30
    	t.string "surname", :limit => 45
    	t.string "email", :default => ""

      t.timestamps
    end
  end
end
