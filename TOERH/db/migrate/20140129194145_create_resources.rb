class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|

    	t.references :resource_type
    	t.references :user
    	t.references :licence
      t.references :tag


    	t.string :namn
    	t.string :url
    	t.text :description

      t.timestamps
    end
  end
end
