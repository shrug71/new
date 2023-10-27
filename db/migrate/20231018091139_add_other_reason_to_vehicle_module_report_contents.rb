class AddOtherReasonToVehicleModuleReportContents < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicle_module_report_contents, :other_reason, :string
  end
end
