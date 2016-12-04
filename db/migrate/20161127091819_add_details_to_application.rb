class AddDetailsToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :age, :string
    add_column :applications, :height, :string
    add_column :applications, :weight, :string
    add_column :applications, :threesize, :string
    add_column :applications, :cup, :string
    add_column :applications, :address, :string
    add_column :applications, :experience, :string
    add_column :applications, :profession, :string
    add_column :applications, :preferreddate, :string
    add_column :applications, :question, :string
    add_column :applications, :contact, :string
  end
end
