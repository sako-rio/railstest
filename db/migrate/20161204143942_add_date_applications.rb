class AddDateApplications < ActiveRecord::Migration
  def change
    add_column :applications, :date, :string
    add_column :applications, :time, :string
  end
end
