class AddPermissionsToWebsite < ActiveRecord::Migration[5.0]
  def change
    add_column :websites, :contact_us, :boolean
    add_column :websites, :ministries, :boolean
    add_column :websites, :beliefs, :boolean
    add_column :websites, :about_us, :boolean
  end
end
