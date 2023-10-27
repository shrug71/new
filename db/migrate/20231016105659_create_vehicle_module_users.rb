class CreateVehicleModuleUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_module_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
