class CreateLicences < ActiveRecord::Migration
  def change
    create_table :licences do |t|

    	t.string :licence_typ

      t.timestamps
    end
  end
end
