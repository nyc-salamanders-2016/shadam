class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string    :title, null: false
      t.text      :body,  null: false
      t.integer   :price, null: false
      t.string    :email, null: false
      t.string    :key
      t.integer   :category_id, null:false

      t.timestamps
    end
  end
end
