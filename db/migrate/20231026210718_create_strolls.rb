class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.integer :duration
      t.references :dogsitter
      t.references :dog

      t.timestamps
    end
  end
end
