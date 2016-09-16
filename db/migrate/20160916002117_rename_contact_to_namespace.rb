class RenameContactToNamespace < ActiveRecord::Migration
  def change
    rename_table :contacts, :spree_contacts
  end
end
