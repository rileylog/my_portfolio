class AddVolumenTypeAndTransferToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :volume, :string
    add_column :areas, :area_type, :string
    add_column :areas, :transfer, :string
  end
end
