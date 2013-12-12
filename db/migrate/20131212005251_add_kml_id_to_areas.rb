class AddKmlIdToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :kml_id, :string
  end
end
