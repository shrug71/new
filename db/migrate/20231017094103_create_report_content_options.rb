class CreateReportContentOptions < ActiveRecord::Migration[7.0]
 def change
    create_table :report_content_options do |t|
    t.string :name
    t.timestamps
    end
  end
end
