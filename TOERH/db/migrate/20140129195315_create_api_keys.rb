class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|

    	t.string :auth_token

      t.timestamps
    end
  end
end
