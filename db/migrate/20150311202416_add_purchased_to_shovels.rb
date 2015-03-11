class AddPurchasedToShovels < ActiveRecord::Migration
  def change
    add_column :shovels, :purchased, :boolean
  end
end
