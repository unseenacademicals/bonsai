class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.belongs_to :employer
      t.text :badges, array: true

      t.timestamps
    end
  end
end
