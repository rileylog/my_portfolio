class AddAreasTable < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name 
      t.string :kml_path 
      t.timestamps
    end
  end
end
