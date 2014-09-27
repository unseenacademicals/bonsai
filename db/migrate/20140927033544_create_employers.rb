class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.text :badges, array: true
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
