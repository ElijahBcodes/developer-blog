class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      rename_table :blogs, :blog_posts
      t.string :title
      t.text :body
      t.string :a

      t.timestamps
    end
  end
end
