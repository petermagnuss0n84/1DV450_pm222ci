class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|

    	t.string :contact_email, :null => false
    	t.string :password_digest, :null => false
      	t.references :api_key

      t.timestamps
    end
  end
end
