class AddCityIdToStrolls < ActiveRecord::Migration[7.0]
  def change
    add_reference :strolls, :city, null: false, foreign_key: true
  end
end
