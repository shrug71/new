class CreateVehicleModuleVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_module_vehicles do |t|
      t.string :type ,null: false
      t.string :brand

      t.timestamps
    end
  end
end
