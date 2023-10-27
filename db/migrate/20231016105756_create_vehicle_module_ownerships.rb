class CreateVehicleModuleOwnerships < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_module_ownerships do |t|
      t.references :vehicle, polymorphic: true, null: false
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
