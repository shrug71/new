class CreateVehicleModuleReportContentOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_module_report_content_options do |t|
      t.string :name
      t.timestamps
    end
  end
end
