class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :acclaim_id
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
