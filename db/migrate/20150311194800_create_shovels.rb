class CreateShovels < ActiveRecord::Migration
  def change
    create_table :shovels do |t|
      t.string :name
      t.float :price
    end
  end
end
