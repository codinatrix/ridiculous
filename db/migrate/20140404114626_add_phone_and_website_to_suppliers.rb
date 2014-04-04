class AddPhoneAndWebsiteToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :phone, :string
    add_column :suppliers, :website, :string
  end
end
