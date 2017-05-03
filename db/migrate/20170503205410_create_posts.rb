class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.text :body
      t.string :subject
      t.string :category
      t.string :article_id
      t.string :twitter_link
      t.string :facebook_link
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
