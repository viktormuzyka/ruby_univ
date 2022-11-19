class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.integer :standby
      t.integer :work_time

      t.timestamps
    end
  end
end
