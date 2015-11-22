class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.belongs_to :user #event.user (you can display as author)
      t.belongs_to :city #event.city
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
