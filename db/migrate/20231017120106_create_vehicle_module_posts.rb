class CreateVehicleModulePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_module_posts do |t|
      t.string :name
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end
