class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.decimal :view, default: 0
      t.decimal :like, default: 0

      t.timestamps
    end
  end
end
