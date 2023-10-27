class CreateVehicleModuleReportContents < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_module_report_contents do |t|
      t.integer :content_id
      t.integer :reason
      t.integer :Reported_by_id

      t.timestamps
    end
  end
end
