class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :alias
      t.string :email
      t.string :password_digest
      t.string :current_city_id
      t.string :profile_pic_url
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
