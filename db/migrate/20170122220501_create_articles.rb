class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps(null: false)
    end
  end
end
