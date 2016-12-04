class AddStyleToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :bust, :string
    add_column :applications, :waist, :string
    add_column :applications, :hip, :string
  end
end
