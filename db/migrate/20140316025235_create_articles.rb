class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :arthor
      t.text :body
      t.integer :rate

      t.timestamps
    end
  end
end
