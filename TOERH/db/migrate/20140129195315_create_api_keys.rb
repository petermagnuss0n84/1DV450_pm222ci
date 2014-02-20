class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|

    	t.string :auth_token
    	t.string :email

      t.timestamps
    end
  end
end
