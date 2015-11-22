class RemoveCurrentCityIdfromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :current_city_id, :string
  end
end
